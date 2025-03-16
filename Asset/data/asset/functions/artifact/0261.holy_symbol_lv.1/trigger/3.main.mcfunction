#> asset:artifact/0261.holy_symbol_lv.1/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0261.holy_symbol_lv.1/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# Objectを召喚
    data modify storage api: Argument.ID set value 1007
    data modify storage api: Argument.FieldOverride.MPHealPer set value 0.01
    data modify storage api: Argument.FieldOverride.Effect.Stack set value 1
    data modify storage api: Argument.FieldOverride.Effect.Duration set value 200
    function api:object/summon
