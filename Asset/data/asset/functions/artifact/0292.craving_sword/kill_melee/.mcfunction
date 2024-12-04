#> asset:artifact/0292.craving_sword/kill_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/292/kill_melee/

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# HP回復
    data modify storage lib: Argument.Heal set value 8f
    function lib:heal/modifier
    function lib:heal/

# リセット
    function lib:heal/reset
