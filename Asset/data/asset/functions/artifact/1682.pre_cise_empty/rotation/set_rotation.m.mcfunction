#> asset:artifact/1682.pre_cise_empty/rotation/set_rotation.m
#
# markerの向きを、目から視線方向へ1進んだ点を視線に垂直な面でずらした先へ向ける
#
# @input
#   as player at player
#   args:
#     X : double (左右のずれ -1.0〜1.0)
#     Y : double (上下のずれ -1.0〜1.0)
#   entity PreCise.Rotation : 向きを変えるmarker (実行位置から1m以内)
# @within function asset:artifact/1682.pre_cise_empty/rotation/roll_rotation

# 目から見た局所座標でずらした点を向き、markerの向きに反映する
    $execute anchored eyes facing ^$(X) ^$(Y) ^1 as @e[type=marker,tag=PreCise.Rotation,distance=..1,limit=1] run tp @s ~ ~ ~ ~ ~
