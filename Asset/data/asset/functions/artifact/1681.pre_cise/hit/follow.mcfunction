#> asset:artifact/1681.pre_cise/hit/follow
#
# 的を、所有者の目から1m先の地点へ移動する
# 方向は、通常の的は的自身のRotation、画面中央の的は所有者の現在の向き
# 所有者の移動量による見た目の補正は含まない (命中判定に使う位置)
#
# @input
#   as 的 at 的
#   tag PreCise.Owner : 所有者 (16m以内)
# @within function asset:artifact/1681.pre_cise/hit/judge

# 所有者の目を基準に、方向へ1m進んだ地点へ移動する
    tag @s add PreCise.Moving
    execute if entity @s[tag=!PreCise.Center] rotated as @s as @p[tag=PreCise.Owner,distance=..16] positioned as @s anchored eyes positioned ^ ^ ^1 run tp @e[type=item_display,tag=PreCise.Moving,distance=..16,limit=1] ~ ~ ~
    execute if entity @s[tag=PreCise.Center] as @p[tag=PreCise.Owner,distance=..16] positioned as @s rotated as @s anchored eyes positioned ^ ^ ^1 run tp @e[type=item_display,tag=PreCise.Moving,distance=..16,limit=1] ~ ~ ~

# リセット
    tag @s remove PreCise.Moving
