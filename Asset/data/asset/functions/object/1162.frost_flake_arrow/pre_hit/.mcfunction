#> asset:object/1162.frost_flake_arrow/pre_hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1162/pre_hit

#> Private
# @private
    #declare tag 1009.Target

#ダメージ増加
    function asset:object/1162.frost_flake_arrow/baf/damage
# ヒット判定をしておく
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=1009.Target,dx=0] run function asset:object/call.m {method:"check_duplicate"}

# Hit判定tag
    tag @s add 1162.Hit
