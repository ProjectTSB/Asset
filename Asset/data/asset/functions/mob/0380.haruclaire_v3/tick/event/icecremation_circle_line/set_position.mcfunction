#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_circle_line/set_position
#
# アイスクリメーション・円+直線
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_circle_line/

# 召喚位置決定
    summon area_effect_cloud ^ ^0.1 ^14 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^ ^0.1 ^-14 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^15 ^0.1 ^15 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.B"],Duration:70}
    summon area_effect_cloud ^-15 ^0.1 ^-15 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.C"],Duration:70}
    summon area_effect_cloud ^-7 ^0.8 ^17 {Tags:["AK.Temp.AttackPosition"],Duration:80}

# 角度設定
    execute as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.A,distance=..80] positioned as @s facing entity @e[type=marker,tag=AK.CenterPosition,distance=..80,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.B,distance=..80] positioned as @s run tp @s ~ ~ ~ ~180 0
    execute as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.C,distance=..80] positioned as @s run tp @s ~ ~ ~ ~ 0
