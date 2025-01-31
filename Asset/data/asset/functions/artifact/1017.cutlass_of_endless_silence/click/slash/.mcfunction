#> asset:artifact/1017.cutlass_of_endless_silence/click/slash/
#
#
#
# @within function asset:artifact/1017.cutlass_of_endless_silence/click/slash/loop

# スコア増やす
    scoreboard players add @s S9.Time 1

# 斬る
    execute if score @s S9.Time matches 1 run function asset:artifact/1017.cutlass_of_endless_silence/click/slash/first
# 衝撃波
    execute if score @s S9.Time matches 10 run function asset:artifact/1017.cutlass_of_endless_silence/click/slash/second

# スコア一定になったらタグ消す
    execute if score @s S9.Time matches 10 run tag @s remove S9.Activation
    execute if score @s S9.Time matches 10 run scoreboard players reset @s S9.Time
