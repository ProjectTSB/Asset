#> asset:object/1009.arrow/hit_entity/from_player
#
#
#
# @within function asset:object/1009.arrow/hit_entity/

#> Private
# @private
    #declare tag Hit
    #declare tag Target
    #declare score_holder $UserID

# modifier をかける
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
# 攻撃対象を確定させる
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#lib:living,type=!player,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run tag @s add Hit
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#lib:living,type=!player,tag=Hit,dx=0,sort=random,limit=1] run tag @s add Target
    execute positioned ~-0.1 ~-0.1 ~-0.1 run tag @e[type=#lib:living,type=!player,tag=Hit,dx=0] remove Hit
# ダメージを与える
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#lib:living,type=!player,tag=Target,dx=0,sort=random,limit=1] run function api:damage/
    function api:damage/reset
# PostHit メソッド呼び出し
    function asset:object/call.m {method:post_hit}
# リセット
    execute positioned ~-0.1 ~-0.1 ~-0.1 run tag @e[type=#lib:living,type=!player,tag=Target,dx=0] remove Target
    scoreboard players reset $UserID Temporary
