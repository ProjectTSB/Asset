#> asset:artifact/1108.white_lily_of_priestess/trigger/2.check_condition/check_effect_list
#
# 再帰的にEffectの中身を調べる
#
# @within function
#   asset:artifact/1108.white_lily_of_priestess/trigger/2.check_condition/check_debuff
#   asset:artifact/1108.white_lily_of_priestess/trigger/2.check_condition/check_effect_list

# 最後尾のエフェクトをチェックするため別storageへ移す
    data modify storage asset:temp Check set from storage api: Return.EffectList[-1]

# デバフでかつClearLvが1なら、自身のデバフ数(Temporary)とデバフ総数に加算
    execute if data storage asset:temp Check{IsBadEffect:true,RequireClearLv:1} run scoreboard players add @s Temporary 1
    execute if data storage asset:temp Check{IsBadEffect:true,RequireClearLv:1} run scoreboard players add $DebuffTotal Temporary 1

# 最後尾の要素を削除
    data remove storage api: Return.EffectList[-1]

# 要素がまだあれば再帰
    execute if data storage api: Return.EffectList[0] run function asset:artifact/1108.white_lily_of_priestess/trigger/2.check_condition/check_effect_list
