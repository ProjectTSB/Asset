#> asset:artifact/0292.craving_sword/kill/3.main
#
#
#
# @within function asset:artifact/0292.craving_sword/kill/2.check_condition

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# HP回復
    data modify storage api: Argument.Heal set value 8f
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
