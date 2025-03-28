#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/summon
#
# 召喚処理
#
# @within function
#   asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/select_pos
#   asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/predict_summon.m
#   asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/spread

# ランダムな方向を向かせる
    execute store result storage api: Argument.FieldOverride.RotationX int 1 run random value 0..359

# 低確率で他の顔を混ぜる
    execute if predicate lib:random_pass_per/10 run function asset:mob/0059.jack_o_lantern/tick/skill/common/set_face_id

# 召喚
    data modify storage api: Argument.ID set value 2036
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Rain
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~8 ~ run function api:object/summon
