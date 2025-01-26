#> asset:object/2145.louvert_soul_blast/tick/warning/
#
# 警告音を鳴らす
#
# @within function asset:object/2145.louvert_soul_blast/tick/

#> val
# @within asset:object/2145.louvert_soul_blast/tick/**
    #declare score_holder $2145.Temp
    #declare tag 9K.Landing

# スコア指定
    scoreboard players set $2145.Temp Temporary 16

# 射線上にいるプレイヤーに警告音を放つ
    execute rotated ~90 ~ positioned ^ ^ ^0.75 run function asset:object/2145.louvert_soul_blast/tick/warning/loop

# スコア指定
    scoreboard players set $2145.Temp Temporary 16

# 射線上にいるプレイヤーに警告音を放つ
    execute rotated ~-90 ~ positioned ^ ^ ^0.75 run function asset:object/2145.louvert_soul_blast/tick/warning/loop

# スコアリセット
    scoreboard players reset $2145.Temp Temporary
