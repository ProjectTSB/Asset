#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_four_circle/set_position
#
# アイスクリメーション・円範囲4体
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_four_circle/

# 召喚位置決定
    summon area_effect_cloud ^-16 ^0.1 ^ {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^16 ^0.1 ^ {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^ ^0.1 ^16 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.B"],Duration:70}
    summon area_effect_cloud ^ ^0.1 ^-16 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.B"],Duration:70}

# 角度設定
    execute as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos,distance=..80] positioned as @s facing entity @e[type=marker,tag=AK.CenterPosition,distance=..80,limit=1] feet run tp @s ~ ~ ~ ~ 0
