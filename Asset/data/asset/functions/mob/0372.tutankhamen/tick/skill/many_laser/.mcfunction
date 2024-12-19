#> asset:mob/0372.tutankhamen/tick/skill/many_laser/
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# AJの開始アニメーション
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/stop
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_start/play
    execute if entity @s[scores={General.Mob.Tick=11}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_wait/play
