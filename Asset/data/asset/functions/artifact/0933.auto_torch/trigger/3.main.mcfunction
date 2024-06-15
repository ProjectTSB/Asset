#> asset:artifact/0933.auto_torch/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0933.auto_torch/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 松明一個消す
    clear @s torch 1
# 前方におけるなら置く、おけなかったら足元に置く
    execute anchored eyes positioned ^ ^ ^4 unless block ~ ~-1 ~ #lib:air if block ~ ~ ~ #lib:air run tag @s add CanSetFront
    execute if entity @s[tag=CanSetFront] anchored eyes positioned ^ ^ ^4 run setblock ~ ~ ~ torch
    execute if entity @s[tag=!CanSetFront] run setblock ~ ~ ~ torch
    tag @s remove CanSetFront
