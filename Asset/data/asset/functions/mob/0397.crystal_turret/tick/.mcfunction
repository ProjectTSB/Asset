#> asset:mob/0397.crystal_turret/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0397.crystal_turret/_/tick

#> ScoreHolder
# @private
    #declare score_holder $B1.Temp

# スコアをカウントアップ
    scoreboard players add @s B1.Tick 1

# 演出
    # 30Tick 毎にクリスタルを回転させる
        scoreboard players operation $B1.Temp B1.Tick = @s B1.Tick
        scoreboard players operation $B1.Temp B1.Tick %= $60 Const
        execute if score $B1.Temp B1.Tick matches 10 on passengers on passengers at @s run tp @s ~ ~ ~ ~60 0
        execute if score $B1.Temp B1.Tick matches 40 on passengers on passengers at @s run tp @s ~ ~ ~ ~60 0
        execute if score $B1.Temp B1.Tick matches 10 on passengers on passengers run data merge entity @s {start_interpolation:-1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]}}
        execute if score $B1.Temp B1.Tick matches 40 on passengers on passengers run data merge entity @s {start_interpolation:-1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.4f,0f],scale:[0.75f,0.75f,0.75f]}}
        scoreboard players reset $B1.Temp B1.Tick
