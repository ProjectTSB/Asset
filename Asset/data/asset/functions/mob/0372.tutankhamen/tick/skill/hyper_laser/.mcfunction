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

# 発射(32tick)
    execute if entity @s[scores={General.Mob.Tick=55}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_long_charge/stop
    execute if entity @s[scores={General.Mob.Tick=55}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/beam_long_shot/play

# 前方に魔法陣を召喚
    execute if entity @s[scores={General.Mob.Tick=14}] run data modify storage api: Argument.FieldOverride set value {Scale:[3.0f,3.0f,0.01f],Color:3523276}
    execute if entity @s[scores={General.Mob.Tick=14}] anchored eyes positioned ^ ^-0.4 ^2.6 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square

    execute if entity @s[scores={General.Mob.Tick=15}] run data modify storage api: Argument.FieldOverride set value {Scale:[2.0f,2.0f,0.01f],CMD:20444,Color:3523276,LeftRotate:true}
    execute if entity @s[scores={General.Mob.Tick=15}] anchored eyes positioned ^ ^-0.4 ^3.0 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square

    execute if entity @s[scores={General.Mob.Tick=15}] run data modify storage api: Argument.FieldOverride set value {Scale:[1.0f,1.0f,0.01f],CMD:20444,Color:3523276}
    execute if entity @s[scores={General.Mob.Tick=15}] anchored eyes positioned ^ ^-0.4 ^3.4 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square

# 発射
    execute if entity @s[scores={General.Mob.Tick=14}] anchored eyes positioned ^ ^-0.4 ^2.6 run function asset

# 共通リセット処理
    execute if entity @s[scores={General.Mob.Tick=87..}] run function asset:mob/0372.tutankhamen/tick/skill/reset









#
