#> asset:artifact/1361.unicorn_horn/trigger/2.check_condition/reset
#
#
#
# @within function asset:artifact/1361.unicorn_horn/trigger/2.check_condition

# 諸々をまとめてリセット
    tag @s remove CanUsed
    data remove storage asset:temp _
    scoreboard players reset $MaxDamage Temporary
    scoreboard players reset $RequireDamage Temporary
    tag @e[type=#lib:living_without_player,tag=Victim,tag=TempTarget,distance=..150] remove TempTarget
