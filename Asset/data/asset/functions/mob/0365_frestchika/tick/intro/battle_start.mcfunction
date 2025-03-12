#> asset:mob/0365_frestchika/tick/intro/battle_start
#
#
#
# @within function asset:mob/0365_frestchika/tick/intro/

# タグ付与
    tag @s remove A5.Moveset.Intro
    tag @s add A5.Moveset.BaseMove

# スコアリセット
    scoreboard players reset @s General.Mob.Tick

# 無敵解除
    tag @s remove Uninterferable
    data modify entity @s Invulnerable set value 0b
