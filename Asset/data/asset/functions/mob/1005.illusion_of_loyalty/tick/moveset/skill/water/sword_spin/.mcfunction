#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/
#
# 剣をまといつつ追いかけてくる
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

# プレイヤーのほうを向く
    execute if score @s General.Mob.Tick matches 0 facing entity @p feet run tp @s ~ ~ ~ ~ 0

# トゥルが剣を解放するまでまっすぐ進む
    execute if score @s General.Mob.Tick matches 20..70 run tp @s ^ ^ ^0.2
    execute if score @s General.Mob.Tick matches 70..75 run tp @s ^ ^ ^0.1
    execute if score @s General.Mob.Tick matches 75..80 run tp @s ^ ^ ^0.05

# リセット
    execute if score @s General.Mob.Tick matches 80 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/reset

# Tick加算
    scoreboard players add @s General.Mob.Tick 1
