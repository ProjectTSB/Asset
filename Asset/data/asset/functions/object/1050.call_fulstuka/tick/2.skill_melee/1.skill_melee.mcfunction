#> asset:object/1050.call_fulstuka/tick/2.skill_melee/1.skill_melee
#
#
#
# @within function asset:object/1050.call_fulstuka/tick/skill_active

# 最初に実行するの
    execute if score @s 1050.ActionTime matches 0 as @s run function asset:object/1050.call_fulstuka/tick/2.skill_melee/2.first_tick


# テレポしてぶった切る
    execute if score @s 1050.ActionTime matches 01 positioned ^ ^ ^1 run function asset:object/1050.call_fulstuka/tick/2.skill_melee/3.slash
    execute if score @s 1050.ActionTime matches 01 run data modify entity @s Pose.RightArm set value [197f,197f,296f]

    execute if score @s 1050.ActionTime matches 04 run data modify entity @s Pose.RightArm set value [201f,0f,314f]
    execute if score @s 1050.ActionTime matches 06 run data modify entity @s Pose.RightArm set value [332f,0f,302f]
    execute if score @s 1050.ActionTime matches 06 positioned ^ ^ ^1 run function asset:object/1050.call_fulstuka/tick/2.skill_melee/3.slash
    execute if score @s 1050.ActionTime matches 06 run tp @s ~ ~ ~ ~-40 ~

    execute if score @s 1050.ActionTime matches 09 run data modify entity @s Pose.RightArm set value [34f,163f,302f]
    execute if score @s 1050.ActionTime matches 12 run data modify entity @s Pose.RightArm set value [56f,0f,74f]
    execute if score @s 1050.ActionTime matches 12 run tp @s ~ ~ ~ ~40 ~
    execute if score @s 1050.ActionTime matches 12 at @s positioned ^ ^ ^1 run function asset:object/1050.call_fulstuka/tick/2.skill_melee/3.slash
# 共通リセット
    execute if score @s 1050.ActionTime matches 20 at @s run function asset:object/1050.call_fulstuka/tick/reset
