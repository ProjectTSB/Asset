#> asset:mob/0187.flame_mage/tick/3.shoot_magic
#
#
#
# @within function asset:mob/0187.flame_mage/tick/2.tick

#> Private
# @private
    #declare tag Random

# ノーマル以下ならプレイヤーの方向
# ハード以上で確率で偏差撃ちする
    execute if predicate lib:random_pass_per/50 run tag @s add Random

# 撃つ
    execute if entity @s[tag=!Random] run function asset:mob/0187.flame_mage/tick/4.facing_shoot
    execute if entity @s[tag=Random] run function asset:mob/0187.flame_mage/tick/5.predict_shoot

# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.7

# リセット
    scoreboard players reset @s 57.Attack
