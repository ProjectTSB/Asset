#> asset:object/2036.falling_pumpkin_bomb/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2036/kill

# 演出
    particle explosion ~ ~1 ~ 0.3 0.3 0.3 0 5 normal @a
    particle cloud ~ ~1 ~ 0 0 0 0.3 50 normal @a
    particle flame ~ ~1 ~ 0 0 0 0.2 100 normal @a
    particle dust 1 0.6 0 3.5 ~ ~ ~ 1.2 1.2 1.2 0 50 normal @a
    particle dust 0.851 0 1 3.5 ~ ~ ~ 1.2 1.2 1.2 0 50 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1.3 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1.6 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1.9 0
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 1.7 0



# 消滅
    kill @s

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
