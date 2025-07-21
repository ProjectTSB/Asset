#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/fall
#
# 落下。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/fall_stacked

# ブロック破壊
    execute if predicate api:area/is_breakable run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/break

# 下にマーカーがいなければTPする
    execute positioned ~-5 ~ ~-5 unless entity @e[type=marker,tag=C5.Marker.SlamPoint,dx=9,dy=-1,dz=9,limit=1] at @s run tp @s ~ ~-1 ~
