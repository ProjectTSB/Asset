#> asset:object/1206.precise_target/move/follow
#
# 的を、所有者の目から的自身のRotationの向きへ1m先の地点へ移動する
# 所有者の移動量による見た目の補正は含まない (補正はmove/leadで行う)
#
# @input
#   as 的 at 的
#   tag PreCise.Owner : 所有者 (16m以内)
# @within function
#   asset:object/1206.precise_target/init/place
#   asset:object/1206.precise_target/init/roll
#   asset:object/1206.precise_target/tick/

# 所有者の目を基準に、的自身の向きへ1m進んだ地点へ移動する
    tag @s add PreCise.Moving
    execute rotated as @s as @p[tag=PreCise.Owner,distance=..16] positioned as @s anchored eyes positioned ^ ^ ^1 run tp @e[type=item_display,tag=PreCise.Moving,distance=..16,limit=1] ~ ~ ~

# リセット
    tag @s remove PreCise.Moving
