#> asset:artifact/0140.hi_soma/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/140/use_item/

#> private
# @private
    #declare score_holder $Fluctuation

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# MP回復
    scoreboard players set $Fluctuation Lib 75
    function lib:mp/fluctuation

# HP回復
    data modify storage lib: Argument.Heal set value 15
    function lib:heal/modifier
    function lib:heal/

# リセット
    function lib:heal/reset
