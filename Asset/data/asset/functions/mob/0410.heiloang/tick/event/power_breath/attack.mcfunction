#> asset:mob/0410.heiloang/tick/event/power_breath/attack
#
# パワーブレス
#
# @within asset:mob/0410.heiloang/tick/event/power_breath/
# @within asset:mob/0410.heiloang/tick/event/power_breath_continue_1/
# @within asset:mob/0410.heiloang/tick/event/power_breath_continue_2/
# @within asset:mob/0410.heiloang/tick/event/power_breath_end/

# 攻撃
    data modify storage api: Argument.ID set value 2128
    execute if score @s BE.Charge.Count matches ..0 run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.PowerBreath0
    execute if score @s BE.Charge.Count matches 1 run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.PowerBreath1
    execute if score @s BE.Charge.Count matches 2.. run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.PowerBreath2
    execute if score @s BE.Charge.Count matches ..0 run data modify storage api: Argument.FieldOverride.DamagePursuit set from storage asset:context this.Damage.PbImpact0
    execute if score @s BE.Charge.Count matches 1 run data modify storage api: Argument.FieldOverride.DamagePursuit set from storage asset:context this.Damage.PbImpact1
    execute if score @s BE.Charge.Count matches 2.. run data modify storage api: Argument.FieldOverride.DamagePursuit set from storage asset:context this.Damage.PbImpact2
    execute store result storage api: Argument.FieldOverride.Count int 1 run scoreboard players get @s BE.Pb.Count
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] run function api:object/summon

# 演出
    playsound item.firecharge.use hostile @a ~ ~ ~ 3 0.7
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    scoreboard players set @s BE.Dummy 50
    execute facing entity @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] feet run function asset:mob/0410.heiloang/tick/event/power_breath/attack_loop
