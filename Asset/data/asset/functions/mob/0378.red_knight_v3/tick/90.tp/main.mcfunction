#> asset:mob/0378.red_knight_v3/tick/90.tp/main
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/skill_active

# モーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/neutral_air/play

# 演出
    execute if score @s AI.Tick matches 0 run playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 2 2
    execute if score @s AI.Tick matches 0 run playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~ 2 1.5

# ジャンプ
    execute if score @s AI.Tick matches 1 positioned ~ ~2 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 2 positioned ~ ~1 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 3 positioned ~ ~0.25 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 4 positioned ~ ~0.5 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
# テレポートを３回くらい繰り返す
    execute if score @s AI.Tick matches 10 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0378.red_knight_v3/tick/90.tp/spread_facing_tp
    execute if score @s AI.Tick matches 18 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0378.red_knight_v3/tick/90.tp/spread_facing_tp
    execute if score @s AI.Tick matches 20 run data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute if score @s AI.Tick matches 20 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0378.red_knight_v3/tick/90.tp/spread_facing_tp
    execute if score @s AI.Tick matches 21 if predicate api:global_vars/difficulty/min/3_blessless run data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
        execute if score @s AI.Tick matches 21 if predicate api:global_vars/difficulty/min/3_blessless facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0378.red_knight_v3/tick/90.tp/spread_facing_tp
# 攻撃に移行
    execute if score @s AI.Tick matches 25 run function asset:mob/0378.red_knight_v3/tick/90.tp/skill_move
