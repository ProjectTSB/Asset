#> asset:mob/0398.crystal_healer/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/398/tick

# スコアをカウントアップ
    scoreboard players add @s B2.Tick 1

# 演出
    # 30Tick 毎にクリスタルを回転させる
        scoreboard players operation $B2.Temp B2.Tick = @s B2.Tick
        scoreboard players operation $B2.Temp B2.Tick %= $60 Const
        execute if score $B2.Temp B2.Tick matches 10 on passengers on passengers at @s run tp @s ~ ~ ~ ~60 0
        execute if score $B2.Temp B2.Tick matches 40 on passengers on passengers at @s run tp @s ~ ~ ~ ~60 0
        execute if score $B2.Temp B2.Tick matches 10 on passengers on passengers run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]}}
        execute if score $B2.Temp B2.Tick matches 40 on passengers on passengers run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.4f,0f],scale:[0.75f,0.75f,0.75f]}}
        scoreboard players reset $B2.Temp B2.Tick

# 回復
    execute if score @s B2.Tick matches 301 run function asset:mob/0398.crystal_healer/ai/heal/

# クールタイム
    execute if score @s B2.Tick matches 420 run scoreboard players set @s B2.Tick 300
