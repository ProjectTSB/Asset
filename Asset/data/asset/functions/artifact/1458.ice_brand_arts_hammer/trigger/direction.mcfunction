#> asset:artifact/1458.ice_brand_arts_hammer/trigger/3.main
#
# ハンマーの演出
#
# @within function asset:artifact/1458.ice_brand_arts_hammer/trigger/3.main


# 1. 中心から氷の結晶（白）を激しく跳ね上げる
    particle minecraft:dust 1.0 1.0 1.0 2.0 ~ ~ ~ 0.5 0.5 0.5 0.1 50 force @a
    particle block ice ~ ~ ~ 1 1 1 0 100

# 2. 叩きつけた衝撃で広がる青い霧（水色）
    particle minecraft:cloud ~ ~ ~ 1.5 0.5 1.5 0.05 40 normal @a
    particle minecraft:dust 0.4 0.8 1.0 1.5 ~ ~ ~ 1.5 0.5 1.5 0.05 60 force @a

# 3. 氷の破片が四方八方に飛び散るサウンド
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.8 0.5 0
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.5 1.5 0
    playsound block.glass.break player @a ~ ~ ~ 1.2 0.7
    playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 0.4 0.7
