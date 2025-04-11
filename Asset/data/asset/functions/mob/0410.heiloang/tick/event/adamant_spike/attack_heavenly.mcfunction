#> asset:mob/0410.heiloang/tick/event/adamant_spike/attack_heavenly
#
# アダマントスパイク
#
# @within asset:mob/0410.heiloang/tick/event/adamant_spike/

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground

# 攻撃用AEC召喚
    data modify storage api: Argument.ID set value 2110
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Heavenly
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] run function api:object/summon

# 演出
    playsound block.amethyst_block.place hostile @a ~ ~20 ~ 2 1
    playsound block.amethyst_block.place hostile @a ~ ~20 ~ 2 1
    playsound block.amethyst_block.place hostile @a ~ ~20 ~ 2 1
    playsound item.trident.return hostile @a ~ ~20 ~ 2 0.7
    particle flash ~ ~20 ~ 1 1 1 0 4
    particle firework ~ ~20 ~ 1 1 1 0.3 10
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set value [0f,90f]
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 30
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ~ ~18.5 ~ run function api:object/summon
