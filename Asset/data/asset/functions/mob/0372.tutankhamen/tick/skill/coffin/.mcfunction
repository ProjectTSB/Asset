#> asset:mob/0372.tutankhamen/tick/skill/coffin/
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# AJ
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/stop
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/rod_ground/play
    execute if entity @s[scores={General.Mob.Tick=34}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/rod_ground/stop
    execute if entity @s[scores={General.Mob.Tick=34}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/rod_ground_end/play

# 演出
    execute if entity @s[scores={General.Mob.Tick=29}] rotated ~ 0 positioned ^ ^0.2 ^0.4 run particle soul ~ ~ ~ 0 0 0 0.2 100
    execute if entity @s[scores={General.Mob.Tick=29}] rotated ~ 0 positioned ^ ^0.2 ^0.4 run particle soul ~ ~ ~ 0 0 0 0.4 100

# 棺召喚
    execute if entity @s[scores={General.Mob.Tick=30}] at @e[type=marker,tag=AC.SpawnMarker,distance=..100] run function asset:mob/0372.tutankhamen/tick/skill/coffin/summon

# 共通リセット処理
    execute if entity @s[scores={General.Mob.Tick=67..}] run function asset:mob/0372.tutankhamen/tick/skill/reset
