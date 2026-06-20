#> asset:artifact/1582.demons_splatter/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1582.demons_splatter/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.ID set value 376
    data modify storage api: Argument.Duration set value 600
    #data modify storage api: Argument.Stack set value <スタック数>      # オプション
    #data modify storage api: Argument.DurationOperation set value "replace"   # オプション
    #data modify storage api: Argument.StackOperation set value "replace"      # オプション
    data modify storage api: Argument.FieldOverride.Attack set value 2.5d
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
