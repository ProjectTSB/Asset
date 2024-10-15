#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/9.end
#
# カボチャの雨の終わり
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/1.main

# 頭を変える
    item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 俗世へ帰ってくる
    tp @s @e[type=marker,tag=1N.SpawnMarker,distance=..52,limit=1]

# NoAI解除
    data modify entity @s NoAI set value 0b

# 耐性解除
    effect clear @s resistance
