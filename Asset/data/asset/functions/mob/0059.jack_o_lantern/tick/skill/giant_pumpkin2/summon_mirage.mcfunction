#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/summon_mirage
#
# 残像を召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/rotate

# 色設定
    execute if entity @s[tag=1N.GiantPumpkin2.LeftRotate] run data modify storage api: Argument.FieldOverride.Color set value 12139714
    execute if entity @s[tag=!1N.GiantPumpkin2.LeftRotate] run data modify storage api: Argument.FieldOverride.Color set value 16750848

# 召喚
    data modify storage api: Argument.ID set value 2032
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    execute at @s run function api:object/summon
