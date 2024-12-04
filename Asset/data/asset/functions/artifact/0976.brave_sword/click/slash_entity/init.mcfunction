#> asset:artifact/0976.brave_sword/click/slash_entity/init
#
# Init処理
#
# @within function asset:artifact/0976.brave_sword/click/

# 向きを揃える
    execute as @p[tag=this] run function api:data_get/rotation
    data modify entity @s Rotation set from storage api: Rotation

# 向き
    execute store result score @s Temporary run data get storage api: Rotation[1] 100
    execute store result entity @s Pose.RightArm[2] float -0.01 run scoreboard players remove @s Temporary 9000

# タグ削除
    tag @s remove R4.SlashInit
    scoreboard players reset @s Temporary