#> asset:mob/0258.enemy_teleporter/tick/weak_teleport
#
#
#
# @within function asset:mob/0258.enemy_teleporter/tick/branch

# 近くにいるモブだけをテレポート
    execute as @e[type=#lib:hostile,tag=Enemy,tag=!Enemy.Boss,tag=!Uninterferable,distance=..15,sort=random,limit=3] run tp ~ ~ ~

# 演出
    playsound ogg:block.respawn_anchor.set_spawn1 hostile @a ~ ~ ~ 1 1.4
    particle dust 0.427 0 0.514 1 ~ ~3 ~ 0.7 3 0.7 0 150

# 自害
    kill @s
