#> asset:object/2176.tiamat_darkbreath/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2176/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2176.tiamat_darkbreath/tick/effect_0
    execute if entity @s[scores={General.Object.Tick=4}] run function asset:object/2176.tiamat_darkbreath/tick/damage_0

    execute if entity @s[scores={General.Object.Tick=6}] run function asset:object/2176.tiamat_darkbreath/tick/set_attack_pos_1
    execute if entity @s[scores={General.Object.Tick=6}] as @e[type=area_effect_cloud,tag=2176.AttackPosition] at @s run function asset:object/2176.tiamat_darkbreath/tick/prediction
    execute if entity @s[scores={General.Object.Tick=34}] at @e[type=area_effect_cloud,tag=2176.AttackPosition] run function asset:object/2176.tiamat_darkbreath/tick/effect_1
    execute if entity @s[scores={General.Object.Tick=37}] run playsound block.glass.break hostile @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={General.Object.Tick=37}] at @e[type=area_effect_cloud,tag=2176.AttackPosition] run function asset:object/2176.tiamat_darkbreath/tick/hit_1
    execute if entity @s[scores={General.Object.Tick=37}] run function asset:object/2176.tiamat_darkbreath/tick/damage

    execute if entity @s[scores={General.Object.Tick=39}] run function asset:object/2176.tiamat_darkbreath/tick/set_attack_pos_2
    execute if entity @s[scores={General.Object.Tick=39}] as @e[type=area_effect_cloud,tag=2176.AttackPosition] at @s run function asset:object/2176.tiamat_darkbreath/tick/prediction
    execute if entity @s[scores={General.Object.Tick=67}] at @e[type=area_effect_cloud,tag=2176.AttackPosition] run function asset:object/2176.tiamat_darkbreath/tick/effect_2
    execute if entity @s[scores={General.Object.Tick=70}] run playsound block.glass.break hostile @a ~ ~ ~ 2 0.7
    execute if entity @s[scores={General.Object.Tick=70}] at @e[type=area_effect_cloud,tag=2176.AttackPosition] run function asset:object/2176.tiamat_darkbreath/tick/hit_2
    execute if entity @s[scores={General.Object.Tick=70}] run function asset:object/2176.tiamat_darkbreath/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=71..}]
