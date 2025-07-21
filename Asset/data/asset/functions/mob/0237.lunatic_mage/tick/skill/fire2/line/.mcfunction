#> asset:mob/0237.lunatic_mage/tick/skill/fire2/line/
#
#
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/fire2/

# 予告出す
    execute positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/tick/skill/fire2/line/vfx
    execute rotated ~20 ~ positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/tick/skill/fire2/line/vfx
    execute rotated ~-20 ~ positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/tick/skill/fire2/line/vfx
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~40 ~ positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/tick/skill/fire2/line/vfx
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~-40 ~ positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/tick/skill/fire2/line/vfx
