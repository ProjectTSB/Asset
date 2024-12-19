#> asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/thunder/summon
#
# 雷を4箇所に落とす処理
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/thunder/

# 4つ落とす
    execute positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/tick/skill/magic_summon/thunder
    execute rotated ~90 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/tick/skill/magic_summon/thunder
    execute rotated ~180 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/tick/skill/magic_summon/thunder
    execute rotated ~270 ~ positioned ^ ^ ^3.5 run function asset:mob/0237.lunatic_mage/tick/skill/magic_summon/thunder
