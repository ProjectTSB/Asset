#> asset:object/1058.brave_knight/tick/event/turn_off_attackmode
#
#
#
# @within function asset:object/1058.brave_knight/tick/event/attack_mode

# ポーズ
    data modify entity @s Pose.LeftArm set value [0f,0f,-15f]
    data modify entity @s Pose.RightArm set value [0f,0f,15f]

# タグ解除
    tag @s remove 1058.AttackMode

# サウンド
    playsound minecraft:entity.allay.ambient_with_item neutral @a ~ ~ ~ 1 2
    playsound ogg:block.smithing_table.smithing_table2 neutral @a ~ ~ ~ 1 2
