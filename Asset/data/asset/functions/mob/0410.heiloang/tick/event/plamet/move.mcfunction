#> asset:mob/0410.heiloang/tick/event/plamet/move
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# 移動位置決定
    execute positioned as @a[tag=BE.HateTarget,distance=..80] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground

# 移動
    execute positioned as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] run tp @s ~ ~0.5 ~

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [20f, 20f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 35
    execute at @s positioned ~ ~ ~ run function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition]
