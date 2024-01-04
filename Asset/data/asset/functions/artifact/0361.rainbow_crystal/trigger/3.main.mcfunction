#> asset:artifact/0361.rainbow_crystal/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0361.rainbow_crystal/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 255 255 255 1 ~ ~ ~ 15 0.25 15 0 1000 force @a
    stopsound @s * block.beacon.activate
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1

# 全属性でダメージを与える＆演出
    execute as @e[type=#lib:living,tag=Enemy,distance=..30] at @s run function asset:artifact/0361.rainbow_crystal/trigger/4.damage