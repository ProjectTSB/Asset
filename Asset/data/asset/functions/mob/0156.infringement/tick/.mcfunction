#> asset:mob/0156.infringement/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/156/tick

# 周囲にプレイヤーがいたらスコアを増やす
    execute if entity @a[distance=..6] unless entity @s[tag=4C.Alert] run scoreboard players add @s General.Mob.Tick 1
# タグがついたら強制的に増え続ける
    execute if entity @s[tag=4C.Alert] run scoreboard players add @s General.Mob.Tick 1

# ハード以上でAlertTagがついてるなら鈍足を無効化
    execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=4C.Alert] run effect clear @s slowness

# 一定時間で発動
    execute if score @s General.Mob.Tick matches 70 run function asset:mob/0156.infringement/tick/alert

# 自爆する
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/0156.infringement/tick/explode
