#> asset:object/2182.heiloang_thunderball/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2182.heiloang_thunderball/tick/get_player

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [8f, 8f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 3
    # execute if entity @e[type=item_display,tag=2180.Pillar,distance=..4] at @e[type=item_display,tag=2180.Pillar,distance=..4] run return run function api:object/summon
    execute positioned ~ ~0.1 ~ run function api:object/summon
