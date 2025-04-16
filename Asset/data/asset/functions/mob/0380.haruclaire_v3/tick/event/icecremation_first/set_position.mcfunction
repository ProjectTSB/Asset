#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/set_position
#
# アイスクリメーション・初回
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/

# 召喚位置決定
    summon area_effect_cloud ^12 ^0.1 ^12 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^-12 ^0.1 ^12 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.B"],Duration:70}

# 角度設定
    execute as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.A,distance=..80] positioned as @s run tp @s ~ ~ ~ ~90 0
    execute as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.B,distance=..80] positioned as @s run tp @s ~ ~ ~ ~-90 0
