#> asset:artifact/0374.thunder_spell/trigger/line
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0374.thunder_spell/trigger/turn_to_enemy
#   asset:artifact/0374.thunder_spell/trigger/line

# 演出
    particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=NearestTarget,dx=0,sort=nearest,limit=1] positioned ~0.5 ~0.5 ~0.5 run function asset:artifact/0374.thunder_spell/trigger/attack

# 再帰
    scoreboard players add $RecursiveCount Temporary 1
    execute unless entity @s[tag=AE.Check] if score $RecursiveCount Temporary matches ..8 positioned ^ ^ ^0.5 run function asset:artifact/0374.thunder_spell/trigger/line
