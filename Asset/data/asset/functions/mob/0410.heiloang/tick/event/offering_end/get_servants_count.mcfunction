#> asset:mob/0410.heiloang/tick/event/offering_end/get_servants_count
#
# ソウルオファリング
#
# @within asset:mob/0410.heiloang/tick/event/offering_end/

# 残っている眷属の数に応じてパワーチャージ段階を進める
    execute if entity @e[type=slime,tag=BF.EntityRoot] run scoreboard players add @s BE.Charge.Count 1
    execute if entity @e[type=slime,tag=BG.EntityRoot] run scoreboard players add @s BE.Charge.Count 1
