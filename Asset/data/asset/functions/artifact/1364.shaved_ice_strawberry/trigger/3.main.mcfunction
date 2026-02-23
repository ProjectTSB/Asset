#> asset:artifact/1364.shaved_ice_strawberry/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1364.shaved_ice_strawberry/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 他のかき氷のところの数値調整も忘れずに！！！！！！！！！！！

# バフがあるかチェック
    data modify storage api: Argument.ID set value 348
    function api:entity/mob/effect/get/from_id

# スタックがNでないなら回復とバフ
    execute unless data storage api: Return.Effect{Stack:2} run function asset:artifact/1364.shaved_ice_strawberry/trigger/heal_and_buff

# スタックがNなら回復とバフ
    execute if data storage api: Return.Effect{Stack:2} run function asset:artifact/1364.shaved_ice_strawberry/trigger/damage_and_clear_buff
