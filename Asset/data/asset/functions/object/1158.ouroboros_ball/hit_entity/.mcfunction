#> asset:object/1158.ouroboros_ball/hit_entity/
#
# ヒット時の処理
#
# @within function asset:object/alias/1158/hit_entity
#> private
# @private
    #declare score_holder $OwnerID

#Hitした敵にTagを付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run tag @s add 13S.HitEnemy

#直前にヒットしている敵ならリセットしてreturn(対象がExtendedCollisionを持っている場合はForwardTargetMobUUIDと比較)
    execute store result score $HitEnemyID Temporary run data get storage asset:context this.HitEnemyID
    execute if score @e[tag=13S.HitEnemy,tag=!ExtendedCollision,distance=..5,sort=nearest,limit=1] MobUUID = $HitEnemyID Temporary run return run function asset:object/1158.ouroboros_ball/hit_entity/reset
    execute if score @e[tag=13S.HitEnemy,tag=ExtendedCollision,distance=..5,sort=nearest,limit=1] ForwardTargetMobUUID = $HitEnemyID Temporary run return run function asset:object/1158.ouroboros_ball/hit_entity/reset

#vfx
    playsound minecraft:entity.ender_dragon.hurt neutral @a ~ ~ ~ 0.6 1.33 0.0
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.0 0.7 0.0
    particle block lapis_block ~ ~ ~ 0 0 0 1 20

# オーナーの特定
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $OwnerID Temporary run tag @s add 13S.Owner

#ダメージ処理
    execute as @e[tag=13S.HitEnemy,distance=..5,sort=nearest,limit=1] run function asset:object/1158.ouroboros_ball/hit_entity/damage

# リセット
    scoreboard players reset $OwnerID Temporary
    scoreboard players reset $HitEnemyID Temporary
    tag @a remove 13S.Owner
    
#反射回数が0になったら玉を消す
    execute if data storage asset:context this{ReflectionLimit:0} run function asset:object/call.m {method:"kill"}

#8m以内に敵がいるなら、向きを変える。そうでない時は玉を消す。
    execute if entity @e[type=#lib:living_without_player,tag=!13S.HitEnemy,tag=!Uninterferable,distance=..8] run function asset:object/1158.ouroboros_ball/hit_entity/reflect
    execute unless entity @e[type=#lib:living_without_player,tag=!13S.HitEnemy,tag=!Uninterferable,distance=..8] run function asset:object/call.m {method:"kill"}

#ヒットタグもリセット
    tag @e[type=#lib:living_without_player,distance=..5] remove 13S.HitEnemy
