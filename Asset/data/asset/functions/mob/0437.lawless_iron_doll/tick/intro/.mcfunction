#> asset:mob/0437.lawless_iron_doll/tick/intro/
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/

# 戦闘開始
    execute if score @s General.Mob.Tick matches 50 run function asset:mob/0437.lawless_iron_doll/tick/intro/battle_start
