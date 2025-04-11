#> asset:mob/0301.karmic/tick/fall/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/fall/play

# 下に落ちる
    execute if score @s General.Mob.Tick matches 0.. positioned ~ ~-0.1 ~ run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 2.. at @s positioned ~ ~-0.1 ~ run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 4.. at @s positioned ~ ~-0.1 ~ run function asset:mob/0301.karmic/tick/common/tp

# 地面についたらリセット
    execute if score @s General.Mob.Tick matches 0.. at @s unless block ~ ~-0.1 ~ #lib:no_collision run function asset:mob/0301.karmic/tick/skill_reset
# 地面につかない異常事態？プレイヤーにTPしてリセット
    execute if score @s General.Mob.Tick matches 100 at @p[gamemode=!spectator,distance=..100] run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/0301.karmic/tick/skill_reset
