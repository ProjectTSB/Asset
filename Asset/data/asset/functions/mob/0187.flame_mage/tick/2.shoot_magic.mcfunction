#> asset:mob/0187.flame_mage/tick/2.shoot_magic
#
# 魔法を発射する
#
# @within function asset:mob/0187.flame_mage/tick/1

#> Private
# @private
    #declare tag Random
    #declare score_holder $Random

# ノーマル以下ならプレイヤーの方向
# ハード以上で確率で偏差撃ちする
    execute if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/50 run tag @s add Random

# 撃つ
    execute if entity @s[tag=!Random] run function asset:mob/0187.flame_mage/tick/3.facing_shoot
    execute if entity @s[tag=Random] run function asset:mob/0187.flame_mage/tick/4.predict_shoot

# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.7

# 次に攻撃するタイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s 57.Tick = $Random Temporary
    scoreboard players remove @s 57.Tick 120

# リセット
    scoreboard players reset $Random Temporary
    tag @s[tag=Random] remove Random
