#> asset:mob/0378.red_knight_v3/tick/91.fall/main
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/skill_active

# モーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/neutral_air/play

# 下に落ちる
    execute if score @s AI.Tick matches 0.. positioned ~ ~-0.25 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 2.. at @s positioned ~ ~-0.25 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 4.. at @s positioned ~ ~-0.25 ~ run function asset:mob/0378.red_knight_v3/tick/common/tp

# 地面についたらリセット
    execute if score @s AI.Tick matches 0.. at @s unless block ~ ~-0.25 ~ #lib:no_collision run function asset:mob/0378.red_knight_v3/tick/skill_reset

# 地面につかない異常事態？プレイヤーにTPしてリセット
    execute if score @s AI.Tick matches 100 at @p[gamemode=!spectator] run function asset:mob/0378.red_knight_v3/tick/common/tp
    execute if score @s AI.Tick matches 100 run function asset:mob/0378.red_knight_v3/tick/skill_reset
