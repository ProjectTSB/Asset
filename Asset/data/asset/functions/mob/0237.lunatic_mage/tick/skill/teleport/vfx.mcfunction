#> asset:mob/0237.lunatic_mage/tick/skill/teleport/vfx
#
# テレポート時の演出
#
# @within function
#   asset:mob/0237.lunatic_mage/init/
#   asset:mob/0237.lunatic_mage/tick/skill/teleport/
#   asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/start

    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 10
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 2 2
