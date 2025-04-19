#> asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack
#
# テルツェット・ディザスター
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_aligning/

# 攻撃位置決定
    execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/set_attack_position.m with entity @s data.locators.pos_head

# 攻撃
    data modify storage api: Argument.ID set value 2107
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BF.Temp.AttackRotation,limit=1] Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Hellfire
    data modify storage api: Argument.FieldOverride.IsDark set value true
    execute at @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] at @e[type=area_effect_cloud,tag=BF.Temp.AttackRotation,limit=1] run function api:object/summon

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 10684938
    data modify storage api: Argument.FieldOverride.Scale set value [12f, 12f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 10
    execute at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,limit=1] positioned ~ ~0.5 ~ run function api:object/summon

# 演出
    execute at @e[type=area_effect_cloud,tag=BF.Temp.AttackRotation,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/particle_shoot
