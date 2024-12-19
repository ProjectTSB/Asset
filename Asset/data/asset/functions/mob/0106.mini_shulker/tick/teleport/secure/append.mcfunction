#> asset:mob/0106.mini_shulker/tick/teleport/secure/append
# @within function asset:mob/0106.mini_shulker/tick/teleport/secure/rec.m

# ダミーを召喚
    summon marker ~ ~ ~ {Tags:["2Y.Append"]}

# データを追加
    data modify storage asset:temp 2Y.Target append value {}
    data modify storage asset:temp 2Y.Target[-1].Pos set from entity @e[type=marker,tag=2Y.Append,limit=1] Pos
    data modify storage asset:temp 2Y.Target[-1].RelativePos set from storage asset:temp 2Y.Secure.RelativePos
    data modify storage asset:temp 2Y.Target[-1].Transformation set from storage asset:temp 2Y.Secure.Transformation

# リセット
    kill @e[type=marker,tag=2Y.Append,limit=1]
