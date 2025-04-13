#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/set_position
#
# アイスクリメーション・連続突進
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/

# 召喚位置決定
    summon area_effect_cloud ^-16 ^0.1 ^15 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^-8 ^0.1 ^19 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^ ^0.1 ^22 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^8 ^0.1 ^19 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}
    summon area_effect_cloud ^16 ^0.1 ^15 {Tags:["AK.IceCrepation.Pos","AK.IceCrepation.Pos.A"],Duration:70}

# ランダムで1か所を牛に変更
    tag @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos,distance=..80,sort=random,limit=1] add AK.IceCrepation.Pos.B
    tag @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos,tag=AK.IceCrepation.Pos.B,distance=..80] remove AK.IceCrepation.Pos.A

# 角度設定
    execute as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos,distance=..80] positioned as @s run tp @s ~ ~ ~ ~180 0
