#> asset:mob/0344.louvert_soul_blast/tick/4.warning
#
# 注意勧告
#
# @within function asset:mob/0344.louvert_soul_blast/tick/2.tick

#> val
# @within asset:mob/0344.louvert_soul_blast/tick/*
    #declare score_holder $9K.Temp
    #declare tag 9K.Landing

# スコア指定
    scoreboard players set $9K.Temp Temporary 16

# 射線上にいるプレイヤーに警告音を放つ
    execute rotated ~90 ~ positioned ^ ^ ^0.75 run function asset:mob/0344.louvert_soul_blast/tick/4.1.warning_loop

# スコア指定
    scoreboard players set $9K.Temp Temporary 16

# 射線上にいるプレイヤーに警告音を放つ
    execute rotated ~-90 ~ positioned ^ ^ ^0.75 run function asset:mob/0344.louvert_soul_blast/tick/4.1.warning_loop

