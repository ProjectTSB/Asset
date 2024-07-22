#> asset:mob/0370.prominence_magic/tick/3.on_ground
#
# 地面に着弾したときの挙動
#
# @within function asset:mob/0370.prominence_magic/tick/1

# 1回目の爆発
    execute if entity @s[scores={AA.Tick=100}] run function asset:mob/0370.prominence_magic/tick/damage

# 予備動作
    execute if entity @s[scores={AA.Tick=105}] run function asset:mob/0370.prominence_magic/tick/4.2nd_blast_ready

# 2回目の爆発
    execute if entity @s[scores={AA.Tick=120}] run function asset:mob/0370.prominence_magic/tick/5.2nd_blast
