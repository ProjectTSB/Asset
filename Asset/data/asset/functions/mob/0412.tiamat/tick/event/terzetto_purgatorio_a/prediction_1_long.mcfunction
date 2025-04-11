#> asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_1_long
#
# テルツェット・アライニング
#
# @within
#   function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/
#   function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/

# 予告
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [26f, 26f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 75
    execute positioned ~ ~-0.3 ~ run function api:object/summon
