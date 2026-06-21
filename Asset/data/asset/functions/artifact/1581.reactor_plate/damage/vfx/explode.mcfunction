#> asset:artifact/1581.reactor_plate/damage/vfx/explode
#
# 自爆演出
#
# @within function asset:artifact/1581.reactor_plate/damage/3.main


# --- 【効果音（小規模・戦術核）】 ---
# 1. 爆発音（少し低めにして重みを出し、空気を震わせる）
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.0 0.8

# 2. ドラゴンファイヤーボールの着弾音（炎が周囲に吹き荒れる「ゴォォッ！」という熱の音）
    playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 2.0 1.0

# --- 【パーティクル（小規模・戦術核）】 ---
# 1. 閃光（核特有の、爆発直前の一瞬の強烈な光）
    particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 normal

# 2. 爆発のコア（中心に発生する強烈な爆風）
    particle minecraft:explosion_emitter ~ ~1 ~ 0.5 0.5 0.5 0 1 normal

# 3. 放射状に広がる爆炎（自身を中心に高速で散る炎）
    particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.5 100 normal
