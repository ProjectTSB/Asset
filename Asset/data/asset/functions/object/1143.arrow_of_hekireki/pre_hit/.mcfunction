#> asset:object/1143.arrow_of_hekireki/pre_hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1143/pre_hit

#> Private
# @private
    #declare tag 1009.Target

# 演出
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=#lib:living,type=!player,tag=1009.Target,dx=0] positioned ~ ~0.2 ~ run function asset:object/1143.arrow_of_hekireki/thunder/

# ヒット判定をしておく
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=1009.Target,dx=0] run function asset:object/call.m {method:"check_duplicate"}

# Hit判定tag
    tag @s add 1143.Hit
