#> asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_point
#
# リヒトブリッツェン
#
# @within asset:mob/0410.heiloang/tick/event/richt_blitzen/

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.GroundPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.GroundPosition,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground

# 攻撃用AEC召喚
    data modify storage api: Argument.ID set value 2126
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.ThunderBurst
    execute at @e[type=area_effect_cloud,tag=BE.Temp.GroundPosition,sort=nearest,limit=1] positioned ~ ~0.5 ~ run function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BE.Temp.GroundPosition,sort=nearest,limit=1]
