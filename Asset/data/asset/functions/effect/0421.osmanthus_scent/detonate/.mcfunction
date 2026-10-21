#> asset:effect/0421.osmanthus_scent/detonate/
#
# 付与先の位置で演出を行い、攻撃者のプレイヤーを実行者にしてSecondRadiusの範囲の敵を攻撃する
#
# @within function
#   asset:effect/0421.osmanthus_scent/end/
#   asset:effect/0421.osmanthus_scent/re-given/

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle dust 1 0.75 0.2 1.2 ~ ~0.8 ~ 0.6 0.5 0.6 0 25 normal @a
    particle minecraft:wax_on ~ ~0.8 ~ 0 0 0 15 40 normal @a
    particle composter ~ ~0.8 ~ 0.6 0.5 0.6 0 20 normal @a
    playsound block.amethyst_block.break player @a ~ ~ ~ 0.8 1.6

# 攻撃者のプレイヤーを実行者にして爆発させる
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function asset:effect/0421.osmanthus_scent/detonate/explode.m with storage asset:context this
    scoreboard players reset $UserID Temporary
