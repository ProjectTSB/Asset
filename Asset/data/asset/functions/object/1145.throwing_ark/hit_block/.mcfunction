#> asset:object/1145.throwing_ark/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1145/hit_block

# 演出
    playsound minecraft:item.trident.hit neutral @a ~ ~ ~ 1 0.6

# 反射
    scoreboard players set $Speed Lib 5
    function lib:reflection_bullet/
