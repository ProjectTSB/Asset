#> asset:mob/0411.behemoth/tick/event/terzetto_succession_a/dive_prediction_long
#
# テルツェット・サクセッション
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_succession_a/

# 攻撃判定用AEC召喚
    summon area_effect_cloud ~ ~ ~ {Duration:174,Tags:["BF.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16727040
    data modify storage api: Argument.FieldOverride.Scale set value [18f,60f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 30
    data modify storage api: Argument.FieldOverride.Tick set value 166
    execute positioned ~ ~ ~ run function api:object/summon
