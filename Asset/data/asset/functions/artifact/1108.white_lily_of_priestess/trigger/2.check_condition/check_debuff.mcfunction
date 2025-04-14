#> asset:artifact/1108.white_lily_of_priestess/trigger/2.check_condition/check_debuff
#
# デバフがあるかをチェックする
#
# @within function asset:artifact/1108.white_lily_of_priestess/trigger/2.check_condition

# デバフのサイズを取得
    function api:entity/mob/effect/get/size/bad

# デバフの
    execute store result score @s Temporary run data get storage api: Return.EffectSize.Bad

# 自身のデバフ数が0でない(= 1以上)なら、データを取得して再帰的に中身を調べる
    execute unless data storage api: Return.EffectSize{Bad:0} run function api:entity/mob/effect/get/all
    execute unless data storage api: Return.EffectSize{Bad:0} run function asset:artifact/1108.white_lily_of_priestess/trigger/2.check_condition/check_effect_list
