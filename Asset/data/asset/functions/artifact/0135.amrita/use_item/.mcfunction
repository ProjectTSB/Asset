#> asset:artifact/0135.amrita/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/135/use_item/

#> private
# @private
    #declare score_holder $Fluctuation

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# MP回復
    scoreboard players set $Fluctuation Lib 40
    function lib:mp/fluctuation
