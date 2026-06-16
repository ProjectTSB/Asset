#> asset:artifact/0015.gasoline/melee/particle
#
# 神器の演出
#
# @within function asset:artifact/0015.gasoline/melee/3.main


# ここから先は神器側の効果の処理を書く
# 粘度の高い液体が撒き散らされる音（溶岩を撒く音）
    playsound minecraft:item.bucket.empty_lava player @a ~ ~ ~ 0.8 0.8 0
# 濁って重い「バシャッ」という水音（通常飛沫を低ピッチで）
    playsound minecraft:entity.generic.splash player @a ~ ~ ~ 0.1 0.6 0

# 油のような濁った色（暗い黄土色〜黒）の細かい飛沫
    particle minecraft:dust 0.2 0.15 0.05 1.5 ~ ~ ~ 0.8 0.4 0.8 0.05 100 normal @a
# ドロリとした質量のある液体の飛び散り（泥ブロックの破片を利用）
    particle minecraft:block minecraft:mud ~ ~ ~ 0.6 0.4 0.6 0.15 50 normal @a
