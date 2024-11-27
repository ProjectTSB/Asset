#> asset:mob/0372.tutankhamen/tick/skill/hyper_laser/
#
# ハイパーレーザー
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# AJ
# 構え開始(21tick)
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/stop
    execute if entity @s[scores={General.Mob.Tick=0}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_long/play

# 構えループ(1ループ17tick)
    execute if entity @s[scores={General.Mob.Tick=21}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_long_charge/play

# 前方に魔法陣を召喚
    execute if entity @s[scores={General.Mob.Tick=14}] anchored eyes positioned ^ ^-0.4 ^2.6 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if entity @s[scores={General.Mob.Tick=14}] anchored eyes positioned ^7 ^-0.4 ^2.6 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if entity @s[scores={General.Mob.Tick=14}] anchored eyes positioned ^-7 ^-0.4 ^2.6 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square

# 発射モーション(32tick)
    execute if entity @s[scores={General.Mob.Tick=55}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_long_charge/stop
    execute if entity @s[scores={General.Mob.Tick=55}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_long_shot/play

# 発射
    #execute if entity @s[scores={General.Mob.Tick=55}] anchored eyes positioned ^ ^-0.4 ^2.6 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/shoot
    #execute if entity @s[scores={General.Mob.Tick=55}] anchored eyes positioned ^7 ^-0.4 ^2.6 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/shoot

# 共通リセット処理
    execute if entity @s[scores={General.Mob.Tick=87..}] run function asset:mob/0372.tutankhamen/tick/skill/reset









#
