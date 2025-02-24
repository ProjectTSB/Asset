#> asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/**

# 低確率で他の顔を混ぜる
    execute if predicate lib:random_pass_per/10 run function asset:mob/0059.jack_o_lantern/tick/skill/common/set_face_id

# 召喚
    data modify storage api: Argument.ID set value 2031
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Giant.Neutral
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~1.5 ~ run function api:object/summon
