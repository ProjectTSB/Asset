#> asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
#
# 汎用処理 落雷による追撃
#
# @within
#   function asset:mob/0327.eclael/tick/**
#   function asset:mob/0327.eclael/debug_damage

# 攻撃
    data modify storage api: Argument.ID set value 2206
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Thunder
    execute positioned ~ ~0.5 ~ run function api:object/summon
