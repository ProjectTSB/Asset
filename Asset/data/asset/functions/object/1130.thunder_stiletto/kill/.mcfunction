#> asset:object/1130.thunder_stiletto/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1130/kill

# 演出
    particle electric_spark ~ ~ ~ 0 0 0 0.5 20 normal @a
    particle dust 1 0.8 0.4 1.2 ~ ~ ~ 0.1 0.1 0.1 0 8
    playsound item.trident.return neutral @a ~ ~ ~ 0.5 2 0
    playsound item.trident.hit_ground neutral @a ~ ~ ~ 0.8 1.2 0

# 消滅
    kill @s
