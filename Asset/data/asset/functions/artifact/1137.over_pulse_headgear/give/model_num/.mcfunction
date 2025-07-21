#> asset:artifact/1137.over_pulse_headgear/give/model_num/
#
#
#
# @within function asset:artifact/1137.over_pulse_headgear/give/2.give

#> private
# @within function asset:artifact/1137.over_pulse_headgear/give/model_num/**
    #declare score_holder $VL.ModelNum

# ランダムに数値を取得する
    data modify storage asset:temp VL.key set value "VL.ModelNum"
    data modify storage asset:temp VL.max set value 100
    data modify storage asset:temp VL.scarcity_history_size set value 50
    execute store result score $VL.ModelNum Temporary run function lib:random/with_biased/manual.m with storage asset:temp VL
# 文字列にする
    execute store result storage asset:temp VL.ModelNum int 1 run scoreboard players get $VL.ModelNum Temporary
    function asset:artifact/1137.over_pulse_headgear/give/model_num/string.m with storage asset:temp VL
# リセット
    scoreboard players reset $VL.ModelNum Temporary
    data remove storage asset:temp VL
