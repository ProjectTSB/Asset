#> asset:mob/0378.red_knight_v3/tick/02.skill_plunge/main
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_melee_2/play

# プレイヤーみる
    execute if score @s AI.Tick matches 0..7 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0378.red_knight_v3/tick/common/tp

# 発動
    execute if score @s AI.Tick matches 20 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0378.red_knight_v3/tick/02.skill_plunge/loop_tp
# ハード加速
    execute if score @s AI.Tick matches 20 if entity @s[tag=AI.HPless50per] run scoreboard players set @s AI.Tick 24
# フィールド設定
    execute if score @s AI.Tick matches 32 run data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[-0.271f, 0.271f, 0.653f, 0.653f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s AI.Tick matches 32 positioned ^ ^ ^-3 run function asset:mob/0378.red_knight_v3/tick/common/slash_obj_summon
    execute if score @s AI.Tick matches 32 positioned ^ ^ ^-3 run function asset:mob/0378.red_knight_v3/tick/02.skill_plunge/damage

    execute if score @s AI.Tick matches 34 run data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[-0.271f, 0.653f, 0.271f, 0.653f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s AI.Tick matches 34 positioned ^ ^ ^-3 run function asset:mob/0378.red_knight_v3/tick/common/slash_obj_summon
    execute if score @s AI.Tick matches 34 positioned ^ ^ ^-3 run function asset:mob/0378.red_knight_v3/tick/02.skill_plunge/damage

    execute if score @s AI.Tick matches 37 run data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[0.271f, 0.271f, -0.653f, 0.653f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s AI.Tick matches 37 positioned ^ ^ ^-3 run function asset:mob/0378.red_knight_v3/tick/common/slash_obj_summon
    execute if score @s AI.Tick matches 37 positioned ^ ^ ^-3 run function asset:mob/0378.red_knight_v3/tick/02.skill_plunge/damage

    execute if score @s AI.Tick matches 39 run data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[0.271f, -0.653f, 0.271f, 0.653f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s AI.Tick matches 39 positioned ^ ^ ^-3 run function asset:mob/0378.red_knight_v3/tick/common/slash_obj_summon
    execute if score @s AI.Tick matches 39 positioned ^ ^ ^-3 run function asset:mob/0378.red_knight_v3/tick/02.skill_plunge/damage

    execute if score @s AI.Tick matches 41 run data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[-0.138f,0.481f,0.239f,0.832f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s AI.Tick matches 41 positioned ^ ^ ^-3 run function asset:mob/0378.red_knight_v3/tick/common/slash_obj_summon
    execute if score @s AI.Tick matches 41 positioned ^ ^ ^-3 run function asset:mob/0378.red_knight_v3/tick/02.skill_plunge/damage


# たまにスコア戻して連続攻撃
    execute if score @s AI.Tick matches 42 if predicate api:global_vars/difficulty/min/3_blessless if predicate lib:random_pass_per/30 run scoreboard players set @s AI.Tick -1

# リセット
    execute if score @s AI.Tick matches 63 run function asset:mob/0378.red_knight_v3/tick/skill_reset
