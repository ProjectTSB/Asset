#> asset:mob/0410.heiloang/tick/event/hellfire/attack
#
# ヘルファイア
#
# @within asset:mob/0410.heiloang/tick/event/hellfire/

# 攻撃位置決定
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0410.heiloang/tick/event/hellfire/set_attack_position.m with entity @s data.locators.locator_head

# 攻撃
    data modify storage api: Argument.ID set value 2107
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] Rotation
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Hellfire
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] run function api:object/summon

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 10684938
    data modify storage api: Argument.FieldOverride.Scale set value [12f, 12f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 10
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] positioned ~ ~0.5 ~ run function api:object/summon

# 演出
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] run function asset:mob/0410.heiloang/tick/event/hellfire/particle_shoot
