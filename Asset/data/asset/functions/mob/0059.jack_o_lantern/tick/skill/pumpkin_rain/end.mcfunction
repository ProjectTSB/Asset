#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/end
#
# カボチャの雨の終わり
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/

# 頭を変える
    item replace entity @s armor.head with stick{CustomModelData:20394}

# 俗世へ帰ってくる
    tp @s @e[type=marker,tag=1N.SpawnMarker,distance=..52,limit=1]

# NoAI解除
    data modify entity @s NoAI set value 0b

# 耐性解除
    effect clear @s resistance
