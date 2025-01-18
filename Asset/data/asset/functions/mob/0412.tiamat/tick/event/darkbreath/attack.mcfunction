#> asset:mob/0412.tiamat/tick/event/darkbreath/attack
#
# ダークブレス
#
# @within asset:mob/0412.tiamat/tick/event/darkbreath/

# 攻撃
    data modify storage api: Argument.ID set value 2176
    data modify storage api: Argument.FieldOverride.Damage set value 52.0f
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,limit=1] run function api:object/summon

# 演出
    playsound entity.shulker.shoot hostile @a ~ ~ ~ 3 0.5
    playsound entity.wither.hurt hostile @a ~ ~ ~ 3 0.5
    scoreboard players set @s BG.Counter 50
    execute facing entity @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,limit=1] feet run function asset:mob/0412.tiamat/tick/event/darkbreath/attack_loop
