#> asset:object/1206.precise_target/direction/center
#
# 所有者の視線方向を、自身のRotationにする
#
# @input
#   as 的 at 的
#   tag PreCise.Owner : 所有者 (16m以内)
# @within function
#   asset:object/1206.precise_target/init/place
#   asset:object/1206.precise_target/tick/

    execute rotated as @p[tag=PreCise.Owner,distance=..16] run tp @s ~ ~ ~ ~ ~
