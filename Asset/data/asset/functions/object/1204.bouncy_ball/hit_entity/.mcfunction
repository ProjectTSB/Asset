#> asset:object/1204.bouncy_ball/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1204/hit_entity

#> private
# @private
    #declare score_holder $OwnerID

#Hitした敵にTagを付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run tag @s add 1AI.HitEnemy

#直前にヒットしている敵ならリセットしてreturn
    execute store result score $HitEnemyID Temporary run data get storage asset:context this.HitEnemyID
    execute if score @e[tag=1AI.HitEnemy,tag=!ExtendedCollision,distance=..5,sort=nearest,limit=1] MobUUID = $HitEnemyID Temporary run return run function asset:object/1204.bouncy_ball/hit_entity/reset
    execute if score @e[tag=1AI.HitEnemy,tag=ExtendedCollision,distance=..5,sort=nearest,limit=1] ForwardTargetMobUUID = $HitEnemyID Temporary run return run function asset:object/1204.bouncy_ball/hit_entity/reset
#vfx
    playsound minecraft:block.slime_block.fall player @a ~ ~ ~ 1.0 1 0.0
    particle block pink_wool ~ ~ ~ 0 0 0 1 20

# オーナーの特定
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $OwnerID Temporary run tag @s add 1AI.Owner

#ダメージ処理
    execute as @e[tag=1AI.HitEnemy,distance=..5,sort=nearest,limit=1] run function asset:object/1204.bouncy_ball/hit_entity/damage

# リセット
    scoreboard players reset $OwnerID Temporary
    scoreboard players reset $HitEnemyID Temporary
    tag @a remove 1AI.Owner

#反射回数が0になったら玉を消す
    execute if data storage asset:context this{ReflectionLimit:0} run function asset:object/call.m {method:"kill"}

#12m以内に敵がいるなら、向きを変える。そうでない時はランダムな向きに向く
    execute if entity @e[type=#lib:living_without_player,tag=!1AI.HitEnemy,tag=!Uninterferable,distance=..12] run function asset:object/1204.bouncy_ball/hit_entity/reflect
    execute unless entity @e[type=#lib:living_without_player,tag=!1AI.HitEnemy,tag=!Uninterferable,distance=..12] run function asset:object/1204.bouncy_ball/hit_entity/random_direction

#ヒットタグもリセット
    tag @e[type=#lib:living_without_player,tag=1AI.HitEnemy,distance=..5] remove 1AI.HitEnemy
