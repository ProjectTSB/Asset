#> asset:object/1058.brave_knight/tick/event/force_back
#
#
#
# @within function asset:object/1058.brave_knight/tick/event/attack_mode

# 帰り着くまで攻撃モードにならないようにする
    tag @s add 1058.StopAttack

# ポーズ
    data modify entity @s Pose.LeftArm set value [0f,0f,-15f]
    data modify entity @s Pose.RightArm set value [0f,0f,15f]

# タグ解除
    tag @s remove 1058.AttackMode
