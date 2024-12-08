#> asset:mob/0378.red_knight_v3/tick/04.skill_knife/main
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_projectile_1/play

# プレイヤーみる
    execute if score @s AI.Tick matches 0 facing entity @p[gamemode=!spectator] feet run function asset:mob/0378.red_knight_v3/tick/common/tp

# 発動
    execute if score @s AI.Tick matches 16 run say aa

    execute if score @s AI.Tick matches 37 run function asset:mob/0378.red_knight_v3/tick/skill_reset
