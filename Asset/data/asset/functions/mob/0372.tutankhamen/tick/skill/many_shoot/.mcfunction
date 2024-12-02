#> asset:mob/0372.tutankhamen/tick/skill/many_shoot/
#
# 沢山球を撃つ
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# AJ
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/stop
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/soul_shot/play

# 上側に魔法陣を沢山召喚する
    execute if entity @s[scores={General.Mob.Tick=3}] rotated ~ 0 positioned ^ ^4.5 ^ summon marker run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon_square
    execute if entity @s[scores={General.Mob.Tick=6}] rotated ~ 0 positioned ^2 ^3.5 ^-1 summon marker run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon_square
    execute if entity @s[scores={General.Mob.Tick=9}] rotated ~ 0 positioned ^-2.5 ^3.7 ^0.5 summon marker run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon_square
    execute if entity @s[scores={General.Mob.Tick=12}] rotated ~ 0 positioned ^-1 ^3.2 ^-0.5 summon marker run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon_square
    execute if entity @s[scores={General.Mob.Tick=12}] rotated ~ 0 positioned ^3.2 ^3.2 ^0.5 summon marker run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon_square
    #execute if entity @s[scores={General.Mob.Tick=12}] rotated ~ 0 positioned ^-1 ^4.2 ^1 summon marker run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon_square

# 共通リセット処理
    execute if entity @s[scores={General.Mob.Tick=88..}] run function asset:mob/0372.tutankhamen/tick/skill/reset
