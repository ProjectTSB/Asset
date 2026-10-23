#> asset:object/1208.osmanthus_scent/kill/
#
# 現在位置で攻撃判定を発生させて消滅する
# 敵・ブロックへの接触と射程限界の各経路から呼ばれる
#
# @within asset:object/alias/1208/kill

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle dust 1 0.75 0.2 1.5 ~ ~ ~ 0.8 0.8 0.8 0 40 normal @a
    particle minecraft:wax_on ~ ~ ~ 0.8 0.8 0.8 5 50 normal @a
    particle end_rod ~ ~ ~ 0 0 0 0.2 15 normal @a
    particle minecraft:dripping_lava ~ ~ ~ 0.9 0.8 0.9 0 40 normal @a
    playsound block.amethyst_block.break player @a ~ ~ ~ 1 1.4
    playsound block.amethyst_block.break player @a ~ ~ ~ 1 1.2

# 攻撃者のプレイヤーを実行者にして攻撃する
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function asset:object/1208.osmanthus_scent/kill/attack.m with storage asset:context this
    scoreboard players reset $UserID Temporary

# 消滅
    kill @s
