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

# プレイヤーの方向に撃つ
    execute anchored eyes facing entity @p[gamemode=!spectator,distance=..20] eyes positioned ^ ^ ^-0.25 run function asset:mob/0187.flame_mage/tick/summon

# 次に攻撃するタイミングをランダムにする
    execute store result score @s General.Mob.Tick run random value -120..-90
