#> asset:artifact/1581.reactor_plate/trigger/vfx/special2
#
# 攻撃演出
#
# @within function asset:artifact/1581.reactor_plate/trigger/full


# --- 【効果音（大規模・戦略核）】 ---
# 1. 耳鳴りのような超高音（核特有の「キィィィン」という圧倒的なエネルギーの閃光音）
    #playsound minecraft:block.beacon.activate player @a ~ ~ ~ 3.0 2.0

# 2. 限界まで低くした大爆発音（地鳴りのような「ズドォォォン…」という絶望的な轟音）
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 5.0 0.5

# 3. 雷鳴の重低音（大爆発の後に響き渡る余韻と振動）
    playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 5.0 0.5

# --- 【パーティクル（大規模・戦略核）】 ---
# 1. 大閃光（視界を白く染めるような複数の光）
    particle minecraft:flash ~ ~1 ~ 0 0 0 0 3 normal

# 2. 爆発のコア（複数重ねて、巨大な衝撃波の発生源を作る）
    particle minecraft:explosion_emitter ~ ~1 ~ 1.5 1.5 1.5 0 5 normal

# 3. キノコ雲の「柱」部分（足元から上空へ吹き上がる猛烈な気流と煙）
    particle minecraft:campfire_cosy_smoke ~ ~ ~ 1.0 3.0 1.0 0.2 300 normal

# 4. キノコ雲の「傘」部分（上空で放射状に広がる大量の爆炎と黒煙）
    particle minecraft:flame ~ ~5 ~ 3.0 0.5 3.0 0.2 500 normal
    particle minecraft:large_smoke ~ ~5 ~ 4.0 1.0 4.0 0.1 500 normal

# 5. 降り注ぐ死の灰（爆発の後に広範囲に降る灰と溶岩の飛沫）
    particle minecraft:ash ~ ~5 ~ 5.0 5.0 5.0 0.0 1000 normal
    particle minecraft:lava ~ ~5 ~ 5.0 5.0 5.0 0.0 50 normal
    particle minecraft:flame ~ ~2.0 ~ 0.8 1.5 0.8 0.1 150 normal
    particle minecraft:flame ~ ~0.5 ~ 1.2 0.0 1.2 0.05 200 normal
