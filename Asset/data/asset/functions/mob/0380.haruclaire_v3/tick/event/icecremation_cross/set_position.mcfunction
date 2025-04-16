#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/set_position
#
# アイスクリメーション・交差
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/

# 召喚位置決定
    summon area_effect_cloud ^5 ^0.1 ^22 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^-5 ^0.1 ^22 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.C"],Duration:70}
    summon area_effect_cloud ^22 ^0.1 ^5 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^22 ^0.1 ^-5 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.C"],Duration:70}
    summon area_effect_cloud ^-13 ^0.1 ^13 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.B"],Duration:70}
    summon area_effect_cloud ^13 ^0.1 ^-13 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.B"],Duration:70}
    summon area_effect_cloud ^13 ^0.5 ^13 {Tags:["AK.Temp.AttackPosition"],Duration:80}

# 角度設定
    execute as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos,distance=..80] positioned as @s facing entity @e[type=marker,tag=AK.CenterPosition,distance=..80,limit=1] feet run tp @s ~ ~ ~ ~ 0
