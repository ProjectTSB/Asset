#> asset:artifact/1252.fox_candle/trigger/vfx
#
# なんか蝋燭っぽい演出
#
# @within function asset:artifact/1252.fox_candle/trigger/attack

# 思考メモ
# yは0.1上に上げて、オレンジ、白、soul_fireの順でロウソクっぽくする
# オレンジは必須(オレンジ + 白で狐のしっぽの表現)

# オレンジ
    particle dust 1 0.7 0 1.3 ~ ~0.5 ~ 0.02 0.3 0.02 0 15 normal @a
# 白
    particle dust 1 0.965 0.878 1.3 ~ ~1.4 ~ 0.02 0.3 0.02 0 15 normal @a
# 炎
    particle soul_fire_flame ~ ~2.2 ~ 0.02 0.04 0.02 0 5 normal @a

# playsound
    playsound minecraft:entity.fox.bite player @a ~ ~ ~ 1 1
