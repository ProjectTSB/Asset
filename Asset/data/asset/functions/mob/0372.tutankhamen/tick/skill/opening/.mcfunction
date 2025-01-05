#> asset:mob/0372.tutankhamen/tick/skill/opening/
#
# 開幕演出の処理
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# AJ処理
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/stop
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/spawn/play

# 共通リセット処理
    execute if entity @s[scores={General.Mob.Tick=59..}] run function asset:mob/0372.tutankhamen/tick/skill/reset
