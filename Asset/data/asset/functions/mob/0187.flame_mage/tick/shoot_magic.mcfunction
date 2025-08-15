#> asset:mob/0187.flame_mage/tick/shoot_magic
#
# 魔法を発射する
#
# @within function asset:mob/0187.flame_mage/tick/

# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.7

# 発射
    function asset:mob/0187.flame_mage/tick/summon
