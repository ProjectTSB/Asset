#> asset:mob/0412.tiamat/tick/event/darkbreath/summon_attack_pos_long
#
# ダークブレス
#
# @within
#    function asset:mob/0412.tiamat/tick/event/darkbreath/
#    function asset:mob/0412.tiamat/tick/event/terzetto_disaster/

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:70,Tags:["BG.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] at @s run function asset:mob/0412.tiamat/tick/util/move_to_ground

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [10f, 10f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 45
    execute as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,limit=1] at @s positioned ~ ~0.5 ~ run function api:object/summon
