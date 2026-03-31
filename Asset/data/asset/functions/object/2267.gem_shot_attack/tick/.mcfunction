#> asset:object/2267.gem_shot_attack/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2267/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=6}] run function asset:object/2267.gem_shot_attack/tick/set_attack_pos_1
    execute if entity @s[scores={General.Object.Tick=6}] as @e[type=area_effect_cloud,tag=2267.AttackPosition,distance=..50] at @s run function asset:object/2267.gem_shot_attack/tick/prediction
    execute if entity @s[scores={General.Object.Tick=37}] positioned ~ ~100 ~ run playsound entity.generic.explode hostile @a[distance=..180] ~ ~ ~ 0.5 0.7 0.5
    execute if entity @s[scores={General.Object.Tick=37}] at @e[type=area_effect_cloud,tag=2267.AttackPosition,distance=..50] run function asset:object/2267.gem_shot_attack/tick/hit_1
    execute if entity @s[scores={General.Object.Tick=37}] run function asset:object/2267.gem_shot_attack/tick/damage

    execute if entity @s[scores={General.Object.Tick=39}] run function asset:object/2267.gem_shot_attack/tick/set_attack_pos_2
    execute if entity @s[scores={General.Object.Tick=39}] as @e[type=area_effect_cloud,tag=2267.AttackPosition,distance=..50] at @s run function asset:object/2267.gem_shot_attack/tick/prediction
    execute if entity @s[scores={General.Object.Tick=70}] positioned ~ ~100 ~ run playsound entity.generic.explode hostile @a[distance=..180] ~ ~ ~ 0.5 0.8 0.5
    execute if entity @s[scores={General.Object.Tick=70}] at @e[type=area_effect_cloud,tag=2267.AttackPosition,distance=..50] run function asset:object/2267.gem_shot_attack/tick/hit_2
    execute if entity @s[scores={General.Object.Tick=70}] run function asset:object/2267.gem_shot_attack/tick/damage
    
    execute if entity @s[scores={General.Object.Tick=72}] run function asset:object/2267.gem_shot_attack/tick/set_attack_pos_3
    execute if entity @s[scores={General.Object.Tick=72}] as @e[type=area_effect_cloud,tag=2267.AttackPosition,distance=..50] at @s run function asset:object/2267.gem_shot_attack/tick/prediction
    execute if entity @s[scores={General.Object.Tick=103}] positioned ~ ~100 ~ run playsound entity.generic.explode hostile @a[distance=..180] ~ ~ ~ 0.5 0.8 0.5
    execute if entity @s[scores={General.Object.Tick=103}] at @e[type=area_effect_cloud,tag=2267.AttackPosition,distance=..50] run function asset:object/2267.gem_shot_attack/tick/hit_3
    execute if entity @s[scores={General.Object.Tick=103}] run function asset:object/2267.gem_shot_attack/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=106..}]
