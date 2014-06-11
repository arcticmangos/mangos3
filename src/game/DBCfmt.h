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

#ifndef MANGOS_DBCSFRM_H
#define MANGOS_DBCSFRM_H

const char Achievementfmt[] = "niiissiiiiisii";
const char AchievementCriteriafmt[] = "niiiiiiiiisiiiiixxiiiii";
const char AreaTableEntryfmt[] = "iiinixxxxxisiiiiifxxxxxxxx";
const char AreaGroupEntryfmt[] = "niiiiiii";
const char AreaTriggerEntryfmt[] = "nifffxxxfffff";
const char ArmorLocationfmt[] = "nfffff";
const char AuctionHouseEntryfmt[] = "niiix";
const char BankBagSlotPricesEntryfmt[] = "ni";
const char BarberShopStyleEntryfmt[] = "nixxxiii";
const char BattlemasterListEntryfmt[] = "niiiiiiiiixsiiiiiiii";
const char CharStartOutfitEntryfmt[] = "diiiiiiiiiiiiiiiiiiiiiiiiixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
const char CharTitlesEntryfmt[] = "nxsxix";
const char ChatChannelsEntryfmt[] = "iixsx";
                                                            // ChatChannelsEntryfmt, index not used (more compact store)
const char ChrClassesEntryfmt[] = "nixsxxxixiiiii";
const char ChrRacesEntryfmt[] = "nxixiixixxxxixsxxxxxixxx";
const char ChrClassesXPowerTypesfmt[] = "nii";
const char CinematicSequencesEntryfmt[] = "nxxxxxxxxx";
const char CreatureDisplayInfofmt[] = "nixifxxxxxxxxxxxx";
const char CreatureDisplayInfoExtrafmt[] = "nixxxxxxxxxxxxxxxxxxx";
const char CreatureFamilyfmt[] = "nfifiiiiixsx";
const char CreatureModelDatafmt[] = "nxxifxxxxxxxxxxffxxxxxxxxxxxxxx";
const char CreatureSpellDatafmt[] = "niiiixxxx";
const char CreatureTypefmt[] = "nxx";
const char CurrencyTypesfmt[] = "nisxxxxiiix";
const char DestructibleModelDatafmt[] = "nixxxixxxxixxxxixxxxixxx";
const char DungeonEncounterfmt[] = "niiiisxx";
const char DurabilityCostsfmt[] = "niiiiiiiiiiiiiiiiiiiiiiiiiiiii";
const char DurabilityQualityfmt[] = "nf";
const char EmotesEntryfmt[] = "nxxiiixx";
const char EmotesTextEntryfmt[] = "nxixxxxxxxxxxxxxxxx";
const char FactionEntryfmt[] = "niiiiiiiiiiiiiiiiiiffixsxx";
const char FactionTemplateEntryfmt[] = "niiiiiiiiiiiii";
const char GameObjectDisplayInfofmt[] = "nsxxxxxxxxxxffffffxxx";
const char GemPropertiesEntryfmt[] = "nixxix";
const char GlyphPropertiesfmt[] = "niii";
const char GlyphSlotfmt[] = "nii";
const char GtBarberShopCostBasefmt[] = "xf";
const char GtCombatRatingsfmt[] = "xf";
const char GtChanceToMeleeCritBasefmt[] = "xf";
const char GtChanceToMeleeCritfmt[] = "xf";
const char GtChanceToSpellCritBasefmt[] = "xf";
const char GtOCTClassCombatRatingScalarfmt[] = "df";
const char GtChanceToSpellCritfmt[] = "xf";
const char GtOCTHpPerStaminafmt[] = "df";
const char GtOCTRegenHPfmt[] = "xf";
const char GtRegenHPPerSptfmt[] = "xf";
const char GtRegenMPPerSptfmt[] = "xf";
const char GtSpellScalingfmt[] = "df";
const char GtOCTBaseHPByClassfmt[] = "df";
const char GtOCTBaseMPByClassfmt[] = "df";
const char GuildPerkSpellsfmt[]="dii";
const char Holidaysfmt[] = "nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
const char ImportPriceArmorfmt[]="nffff";
const char ImportPriceQualityfmt[]="nf";
const char ImportPriceShieldfmt[]="nf";
const char ImportPriceWeaponfmt[]="nf";
const char ItemPriceBasefmt[]="diff";
const char ItemClassfmt[] = "nixxfs";
const char ItemArmorQualityfmt[] = "nfffffffi";
const char ItemArmorShieldfmt[] = "nifffffff";
const char ItemArmorTotalfmt[] = "niffff";
const char ItemBagFamilyfmt[] = "nx";
//const char ItemDisplayTemplateEntryfmt[] = "nxxxxxxxxxxixxxxxxxxxxx";
//const char ItemCondExtCostsEntryfmt[] = "xiii";
//const char ItemExtendedCostEntryfmt[] = "niiiiiiiiiiiiiix";
const char ItemDamagefmt[] = "nfffffffi";
const char ItemDisenchantLootfmt[] = "niiiiii";
const char ItemLimitCategoryEntryfmt[] = "nxii";
const char ItemRandomPropertiesfmt[] = "nxiiiiis";
const char ItemRandomSuffixfmt[] = "nsxiiiiiiiiii";
const char ItemReforgefmt[]="nifif";
const char ItemSetEntryfmt[] = "dsxxxxxxxxxxxxxxxxxiiiiiiiiiiiiiiiiii";
const char LFGDungeonEntryfmt[] = "nsiiiiiiiiixxixixixxx";
const char LFGDungeonExpansionEntryfmt[] = "niiiiiii";
const char LiquidTypefmt[] = "nxxixixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
const char LockEntryfmt[] = "niiiiiiiiiiiiiiiiiiiiiiiixxxxxxxx";
const char MailTemplateEntryfmt[] = "nxs";
const char MapEntryfmt[] = "nsiiiisissififfiiiii";
const char MapDifficultyEntryfmt[] = "niisiis";
const char MovieEntryfmt[] = "nxxx";
const char MountCapabilityfmt[] = "niiiiiii";
const char MountTypefmt[] = "niiiiiiiiiiiiiiiiiiiiiiii";
const char NumTalentsAtLevelfmt[] = "df";
const char OverrideSpellDatafmt[] = "niiiiiiiiiixx";
const char QuestFactionRewardfmt[] = "niiiiiiiiii";
const char QuestPOIPointfmt[]="diii";
const char QuestSortEntryfmt[] = "nx";
const char QuestXPLevelfmt[] = "niiiiiiiiii";
const char Phasefmt[] = "nii";
const char PowerDisplayfmt[] = "nixxxx";
const char PvPDifficultyfmt[] = "diiiii";
const char RandomPropertiesPointsfmt[] = "niiiiiiiiiiiiiii";
const char ResearchBranchfmt[]="isxixi";
const char ResearchProjectfmt[]="nssiiiixi";
const char ResearchSitefmt[]="niisx";
const char ScalingStatDistributionfmt[] = "niiiiiiiiiiiiiiiiiiiixi";
const char ScalingStatValuesfmt[] = "iniiiiiiiiiiiiiiiiiiiixxxxxxxxxxxxxxxxxxxxxxxxx";
const char SkillLinefmt[] = "nisxixi";
const char SkillLineAbilityfmt[] = "niiiixxiiiiiix";
const char SkillRaceClassInfofmt[] = "diiiiixxx";
const char SoundEntriesfmt[] = "nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
const char SpellCastTimefmt[] = "niii";
const char SpellDurationfmt[] = "niii";
const char SpellDifficultyfmt[] = "niiii";
const char SpellEntryfmt[] = "niiiiiiiiiiiiiiifiiiissxxiixxixiiiiiiixiiiiiiiix";
const char SpellAuraOptionsEntryfmt[] = "diiii";
const char SpellAuraRestrictionsEntryfmt[] = "diiiiiiii";
const char SpellCastingRequirementsEntryfmt[] = "dixxixi";
const char SpellCategoryEntryfmt[] = "dixx";
const char SpellCategoriesEntryfmt[] = "diiiiii";
const char SpellClassOptionsEntryfmt[] = "dxiiiix";
const char SpellCooldownsEntryfmt[] = "diii";
const char SpellEffectEntryfmt[] = "difiiiffiiiiiifiifiiiiiiiix";
const char SpellEquippedItemsEntryfmt[] = "diii";
const char SpellInterruptsEntryfmt[] = "dixixi";
const char SpellLevelsEntryfmt[] = "diii";
const char SpellPowerEntryfmt[] = "diiiixxx";
const char SpellReagentsEntryfmt[] = "diiiiiiiiiiiiiiii";
const char SpellScalingEntryfmt[] = "diiiiffffffffffi";
const char SpellShapeshiftEntryfmt[] = "dixixx";
const char SpellTargetRestrictionsEntryfmt[] = "dfiiii";
const char SpellTotemsEntryfmt[] = "diiii";
const char SpellFocusObjectfmt[] = "nx";
const char SpellItemEnchantmentfmt[] = "nxiiiiiixxxiiisiiiiiiix";
const char SpellItemEnchantmentConditionfmt[] = "nbbbbbxxxxxbbbbbbbbbbiiiiiXXXXX";
const char SpellRadiusfmt[] = "nfxx";
const char SpellRangefmt[] = "nffffxxx";
const char SpellRuneCostfmt[] = "niiii";
const char SpellShapeshiftFormfmt[] = "nxxiixiiixxiiiiiiiixx";
//const char StableSlotPricesfmt[] = "ni"; // removed
const char SummonPropertiesfmt[] = "niiiii";
const char TalentEntryfmt[] = "niiiiiiiiixxixxxxxx";
const char TalentTabEntryfmt[] = "nxxiiixxiii";
const char TalentTreePrimarySpellsfmt[] = "diix";
const char TaxiNodesEntryfmt[] = "nifffsiixxx";
const char TaxiPathEntryfmt[] = "niii";
const char TaxiPathNodeEntryfmt[] = "diiifffiiii";
const char TotemCategoryEntryfmt[] = "nxii";
const char TransportAnimationEntryfmt[] = "diifffi";
const char VehicleEntryfmt[] = "niffffiiiiiiiifffffffffffffffssssfifiixx";
const char VehicleSeatEntryfmt[] = "niiffffffffffiiiiiifffffffiiifffiiiiiiiffiiiiixxxxxxxxxxxxxxxxxxxx";
const char WMOAreaTableEntryfmt[] = "niiixxxxxiixxxx";
const char WorldMapAreaEntryfmt[] = "niixffffixxxxx";
const char WorldMapOverlayEntryfmt[] = "nxiiiixxxxxxxxx";
const char WorldSafeLocsEntryfmt[] = "nifffx";
const char WorldStateEntryfmt[] = "niiixxxssiixssiix";
const char WorldPvPAreaEnrtyfmt[] = "niiiiii";

#endif
