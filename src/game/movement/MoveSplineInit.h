/*
 * Copyright (C) 2005-2012 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef MANGOSSERVER_MOVESPLINEINIT_H
#define MANGOSSERVER_MOVESPLINEINIT_H

#include "MoveSplineInitArgs.h"
#include "PathFinder.h"

class Unit;
class GameObject;

namespace Movement
{
    enum AnimType
    {
        ToGround    = 0, // 460 = ToGround, index of AnimationData.dbc
        FlyToFly    = 1, // 461 = FlyToFly?
        ToFly       = 2, // 458 = ToFly
        FlyToGround = 3, // 463 = FlyToGround
    };

    template <class T> class MANGOS_DLL_SPEC MoveSplineInit;

    /*  Initializes and launches spline movement
     */
    template <> class MANGOS_DLL_SPEC MoveSplineInit<Unit*>
    {
        public:

            explicit MoveSplineInit(Unit& m);

            /* Final pass of initialization that launches spline movement.
             * @return duration - estimated travel time
             */
            int32 Launch();

            /* Stop any creature movement */
            void Stop();

            /* Adds movement by parabolic trajectory
             * @param amplitude  - the maximum height of parabola, value could be negative and positive
             * @param start_time - delay between movement starting time and beginning to move by parabolic trajectory
             * can't be combined with final animation
             */
            void SetParabolic(float amplitude, float start_time);
            /* Plays animation after movement done
             * can't be combined with parabolic movement
             */
            void SetAnimation(AnimType anim);

            /* Adds final facing animation
             * sets unit's facing to specified point/angle after all path done
             * you can have only one final facing: previous will be overriden
             */
            void SetFacing(float angle);
            void SetFacing(Vector3 const& point);
            void SetFacing(const Unit* target);

            /* Initializes movement by path
             * @param path - array of points, shouldn't be empty
             * @param pointId - Id of fisrt point of the path. Example: when third path point will be done it will notify that pointId + 3 done
             */
            void MovebyPath(PointsArray const& path, int32 pointId = 0);

            /* Initializes simple A to B mition, A is current unit's position, B is destination
             */
            void MoveTo(Vector3 const& destination, bool generatePath = false, bool forceDestination = false, bool straightLine = false);
            void MoveTo(float x, float y, float z, bool generatePath = false, bool forceDestination = false, bool straightLine = false);

            /* Sets Id of fisrt point of the path. When N-th path point will be done ILisener will notify that pointId + N done
             * Needed for waypoint movement where path splitten into parts
             */
            void SetFirstPointId(int32 pointId) { args.path_Idx_offset = pointId; }

            /* Enables CatmullRom spline interpolation mode(makes path smooth)
             * if not enabled linear spline mode will be choosen. Disabled by default
             */
            void SetSmooth();
            /* Enables CatmullRom spline interpolation mode, enables flying animation. Disabled by default
             */
            void SetFly();
            /* Enables walk mode. Disabled by default
             */
            void SetWalk(bool enable);
            /* Makes movement cyclic. Disabled by default
             */
            void SetCyclic();
            /* Enables falling mode. Disabled by default
             */
            void SetFall();
            /* Inverses unit model orientation. Disabled by default
             */
            void SetOrientationInversed();
            /* Fixes unit's model rotation. Disabled by default
             */
            void SetOrientationFixed(bool enable);

            /* Enables transport enter/exit modes
             */
            void SetTransportEnter();
            void SetTransportExit();

            /* Sets the velocity (in case you want to have custom movement velocity)
             * if no set, speed will be selected based on unit's speeds and current movement mode
             * Has no effect if falling mode enabled
             * velocity shouldn't be negative
             */
            void SetVelocity(float velocity);

            /* Sets BoardVehicle flag
             */
            void SetBoardVehicle();

            /* Sets ExitVehicle flag
             */
            void SetExitVehicle();

            PointsArray& Path() { return args.path; }

        protected:

            MoveSplineInitArgs args;
            Unit&  unit;
    };

    inline void MoveSplineInit<Unit*>::SetFly() { args.flags.flying = true;}
    inline void MoveSplineInit<Unit*>::SetWalk(bool enable) { args.flags.walkmode = enable;}
    inline void MoveSplineInit<Unit*>::SetSmooth() { args.flags.EnableCatmullRom();}
    inline void MoveSplineInit<Unit*>::SetCyclic() { args.flags.cyclic = true;}
    inline void MoveSplineInit<Unit*>::SetFall() { args.flags.EnableFalling();}
    inline void MoveSplineInit<Unit*>::SetVelocity(float vel) {  args.velocity = vel;}
    inline void MoveSplineInit<Unit*>::SetOrientationInversed() { args.flags.orientationInversed = true;}
    inline void MoveSplineInit<Unit*>::SetOrientationFixed(bool enable) { args.flags.orientationFixed = enable;}
    inline void MoveSplineInit<Unit*>::SetBoardVehicle() { args.flags.EnableBoardVehicle(); }
    inline void MoveSplineInit<Unit*>::SetExitVehicle() { args.flags.EnableExitVehicle(); }

    inline void MoveSplineInit<Unit*>::MovebyPath(PointsArray const& controls, int32 path_offset)
    {
        args.path_Idx_offset = path_offset;
        args.path.assign(controls.begin(), controls.end());
    }

    inline void MoveSplineInit<Unit*>::MoveTo(float x, float y, float z, bool generatePath, bool forceDestination, bool straightLine)
    {
        Vector3 v(x, y, z);
        MoveTo(v, generatePath, forceDestination, straightLine);
    }

    inline void MoveSplineInit<Unit*>::MoveTo(const Vector3& dest, bool generatePath, bool forceDestination, bool straightLine)
    {
        if (generatePath)
        {
            PathFinder path(&unit);
            path.calculate(dest.x, dest.y, dest.z, forceDestination, straightLine);
            MovebyPath(path.getPath());
        }
        else
        {
            args.path_Idx_offset = 0;
            args.path.resize(2);
            args.path[1] = dest;
        }
    }

    inline void MoveSplineInit<Unit*>::SetParabolic(float amplitude, float time_shift)
    {
        args.time_perc = time_shift;
        args.parabolic_amplitude = amplitude;
        args.flags.EnableParabolic();
    }

    inline void MoveSplineInit<Unit*>::SetAnimation(AnimType anim)
    {
        args.time_perc = 0.0f;
        args.flags.EnableAnimation((uint8)anim);
    }

    inline void MoveSplineInit<Unit*>::SetFacing(Vector3 const& spot)
    {
        args.facing.f.x = spot.x;
        args.facing.f.y = spot.y;
        args.facing.f.z = spot.z;
        args.flags.EnableFacingPoint();
    }

    template <> class MANGOS_DLL_SPEC MoveSplineInit<GameObject*>
    {
        public:
            explicit MoveSplineInit(GameObject& go);
            int32 Launch();
            void SetParabolic(float amplitude, float start_time);
            void MovebyPath(const PointsArray& path, int32 pointId = 0);
            void MoveTo(const Vector3& destination);
            void MoveTo(float x, float y, float z);
            void SetFirstPointId(int32 pointId) { args.path_Idx_offset = pointId; }
            void SetSmooth();
            void SetFly();
            void SetCyclic();
            void SetFall();
            void SetOrientationInversed();
            void SetOrientationFixed(bool enable);
            void SetVelocity(float velocity);

            PointsArray& Path() { return args.path; }

        protected:
            MoveSplineInitArgs args;
            GameObject&  gameobject;
    };

    inline void MoveSplineInit<GameObject*>::SetFly() { args.flags.flying = true;}
    inline void MoveSplineInit<GameObject*>::SetSmooth() { args.flags.EnableCatmullRom();}
    inline void MoveSplineInit<GameObject*>::SetCyclic() { args.flags.cyclic = true;}
    inline void MoveSplineInit<GameObject*>::SetFall() { args.flags.EnableFalling();}
    inline void MoveSplineInit<GameObject*>::SetVelocity(float vel) {  args.velocity = vel;}
    inline void MoveSplineInit<GameObject*>::SetOrientationInversed() { args.flags.orientationInversed = true;}
    inline void MoveSplineInit<GameObject*>::SetParabolic(float amplitude, float time_shift)
    {
        args.time_perc = time_shift;
        args.parabolic_amplitude = amplitude;
        args.flags.EnableParabolic();
    }
    inline void MoveSplineInit<GameObject*>::MoveTo(float x, float y, float z)
    {
        Vector3 v(x, y, z);
        MoveTo(v);
    }

    inline void MoveSplineInit<GameObject*>::MoveTo(const Vector3& dest)
    {
        args.path_Idx_offset = 0;
        args.path.resize(2);
        args.path[1] = dest;
    }
}
#endif // MANGOSSERVER_MOVESPLINEINIT_H
