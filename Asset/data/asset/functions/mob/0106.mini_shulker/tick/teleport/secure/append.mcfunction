#> asset:mob/0106.mini_shulker/tick/teleport/secure/append
# @within function asset:mob/0106.mini_shulker/tick/teleport/secure/rec.m

# データを追加
    data modify storage asset:temp 2Y.Target append value {}
    data modify storage asset:temp 2Y.Target[-1].Pos set from entity @s Pos
    data modify storage asset:temp 2Y.Target[-1].RelativePos set from storage asset:temp 2Y.Secure.RelativePos
    data modify storage asset:temp 2Y.Target[-1].Transformation set from storage asset:temp 2Y.Secure.Transformation

# 消滅
    kill @s
