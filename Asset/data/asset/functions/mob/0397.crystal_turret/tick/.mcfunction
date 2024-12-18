#> asset:mob/0397.crystal_turret/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/397/tick

# スコアをカウントアップ
    scoreboard players add @s B1.Tick 1

# 演出
    # 30Tick 毎にクリスタルを回転させる
        scoreboard players operation $B1.Temp B1.Tick = @s B1.Tick
        scoreboard players operation $B1.Temp B1.Tick %= $60 Const
        execute if score $B1.Temp B1.Tick matches 10 on passengers on passengers at @s run tp @s ~ ~ ~ ~60 0
        execute if score $B1.Temp B1.Tick matches 40 on passengers on passengers at @s run tp @s ~ ~ ~ ~60 0
        execute if score $B1.Temp B1.Tick matches 10 on passengers on passengers run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]}}
        execute if score $B1.Temp B1.Tick matches 40 on passengers on passengers run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.4f,0f],scale:[0.75f,0.75f,0.75f]}}
        scoreboard players reset $B1.Temp B1.Tick

# 発射
    execute if score @s B1.Tick matches 301 run function asset:mob/0397.crystal_turret/ai/projectile/4.fire
    execute if score @s B1.Tick matches 302 run function asset:mob/0397.crystal_turret/ai/projectile/4.fire
    execute if score @s B1.Tick matches 303 run function asset:mob/0397.crystal_turret/ai/projectile/4.fire
    execute if score @s B1.Tick matches 304 run function asset:mob/0397.crystal_turret/ai/projectile/4.fire
    execute if score @s B1.Tick matches 305 run function asset:mob/0397.crystal_turret/ai/projectile/4.fire
    execute if score @s B1.Tick matches 306 run function asset:mob/0397.crystal_turret/ai/projectile/4.fire
    execute if score @s B1.Tick matches 307 run function asset:mob/0397.crystal_turret/ai/projectile/4.fire
    execute if score @s B1.Tick matches 308 run function asset:mob/0397.crystal_turret/ai/projectile/4.fire
    execute if score @s B1.Tick matches 309 run function asset:mob/0397.crystal_turret/ai/projectile/4.fire
    execute if score @s B1.Tick matches 310 run function asset:mob/0397.crystal_turret/ai/projectile/4.fire

# クールタイム
    #ノーマルは120Tick
    #ハードは60Tick
        execute if score @s B1.Tick matches 360 if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s B1.Tick 300
        execute if score @s B1.Tick matches 420 if predicate api:global_vars/difficulty/max/normal run scoreboard players set @s B1.Tick 300
        
# リセット
    scoreboard players reset $B1.Temp B1.UUID
