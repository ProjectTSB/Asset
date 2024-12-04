#> asset:artifact/0933.auto_torch/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/933/tick/

# 松明一個消す
    clear @s torch 1
# 前方におけるなら置く、おけなかったら足元に置く
    execute anchored eyes positioned ^ ^ ^4 unless block ~ ~-1 ~ #lib:air if block ~ ~ ~ #lib:air run tag @s add CanSetFront
    execute if entity @s[tag=CanSetFront] anchored eyes positioned ^ ^ ^4 run setblock ~ ~ ~ torch
    execute if entity @s[tag=!CanSetFront] run setblock ~ ~ ~ torch
    tag @s remove CanSetFront
