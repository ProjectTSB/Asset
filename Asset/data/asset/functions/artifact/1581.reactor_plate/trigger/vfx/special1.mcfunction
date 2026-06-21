#> asset:artifact/1581.reactor_plate/trigger/vfx/special1
#
# 攻撃演出
#
# @within function asset:artifact/1581.reactor_plate/trigger/crit


# 1. 重い物理ヒット音（元の音：ベースの打撃感）
    playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.8

# 2. 鋭い爆風（元の音：高音の抜けの良さ）
    playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 1 1.5

# 3. 【追加】大質量の炎が吹き荒れる「ゴォォッ！」という音（ファイヤーチャージを低音化）
    playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1.5 0.7

# 4. 【追加】炎の熱さを強調する「バチッ！」という破裂音（ブレイズの射出音）
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.2 0.9

# 5. 【追加】豪華さを跳ね上げる「ドズゥン…」という重低音（通常の爆発音を極限まで低く）
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.0 0.6
    particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.05 50 normal
    particle minecraft:flame ~ ~1 ~ 1 0.5 1 0.2 100
    particle minecraft:large_smoke ~ ~1 ~ 1 1 1 0.05 30
    particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 1 10
