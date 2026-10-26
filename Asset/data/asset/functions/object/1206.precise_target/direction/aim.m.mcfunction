#> asset:object/1206.precise_target/direction/aim.m
#
# 所有者の目から狙う敵の目への向き (敵が見つからなければ所有者の視線方向) を基準に、局所座標で(X, Y, 1)の点へ向く方角を、自身のRotationにする
#
# @input
#   as 的 at 的
#   tag PreCise.Owner : 所有者 (16m以内)
#   args:
#     X : double (基準の向きに垂直な面での左右のずれ 負なら左)
#     Y : double (上下のずれ)
# @within function
#   asset:object/1206.precise_target/init/roll
#   asset:object/1206.precise_target/tick/

# 所有者の視線方向を自身のRotationにする
    execute rotated as @p[tag=PreCise.Owner,distance=..16] run tp @s ~ ~ ~ ~ ~

# 敵が見つかれば、所有者の目から敵の目への方角を自身のRotationにする
# 目の高さは実行者が所有者の間に評価するので、位置を確定してから実行者を的へ替える
    function asset:object/1206.precise_target/direction/mark_aim
    tag @s add PreCise.Moving
    execute as @p[tag=PreCise.Owner,distance=..16] at @s anchored eyes positioned ^ ^ ^ anchored feet facing entity @e[type=#lib:living_without_player,tag=PreCise.Aimed,distance=..24,limit=1] eyes as @e[type=item_display,tag=PreCise.Moving,distance=..16,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

# 更新後の向きを基準に、局所座標で(X, Y, 1)の点へ向く
    $execute rotated as @s facing ^$(X) ^$(Y) ^1 run tp @s ~ ~ ~ ~ ~

# リセット
    tag @s remove PreCise.Moving
    tag @e[type=#lib:living_without_player,tag=PreCise.Aimed,distance=..24] remove PreCise.Aimed
