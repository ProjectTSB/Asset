#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/end
#
# カボチャの雨の終わり
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/

# 俗世へ帰ってくる
    tp @s @e[type=marker,tag=1N.SpawnMarker,distance=..52,limit=1]

# 演出
    execute at @s run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0
    execute at @s run particle dust 1 0.6 0 1.5 ~ ~3 ~ 0.4 2 0.4 0 200 normal @a
    execute at @s run particle dust 0.851 0 1 1.5 ~ ~3 ~ 0.4 2 0.4 0 200 normal @a

# 頭を変える
    #execute at @s run item replace entity @s armor.head with stick{CustomModelData:20394}

# NoAI解除
    data modify entity @s NoAI set value 0b

# 耐性解除
    effect clear @s resistance
