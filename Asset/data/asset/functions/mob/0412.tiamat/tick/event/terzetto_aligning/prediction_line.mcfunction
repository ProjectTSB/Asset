#> asset:mob/0412.tiamat/tick/event/terzetto_aligning/prediction_line
#
# テルツェット・アライニング
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_aligning/

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [6.6f,60f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 25
    execute positioned ~ ~-1.8 ~ run function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1]
