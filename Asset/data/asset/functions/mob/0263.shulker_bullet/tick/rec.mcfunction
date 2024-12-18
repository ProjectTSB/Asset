#> asset:mob/0263.shulker_bullet/tick/rec
# @within asset:mob/0263.shulker_bullet/tick/

# 演出
    particle crit ~ ~ ~ 0.1 0.1 0.1 0 30 normal
    particle end_rod ~ ~ ~ 0 0 0 0 1 normal

# ターゲットを召喚する
    execute if data storage asset:context this.TargetPos run summon marker ~ ~ ~ {Tags:["7B.Target"]}
    execute if data storage asset:context this.TargetPos run data modify entity @e[type=marker,tag=7B.Target,distance=..0.01,limit=1] Pos set from storage asset:context this.TargetPos
# プレイヤーに向けてターンする
    execute if entity @e[type=marker,tag=7B.Target,distance=..0.5,limit=1] unless data storage asset:context this{TurnLimit:0} run return run function asset:mob/0263.shulker_bullet/tick/turn/

# 直進
    tp @s ^ ^ ^0.5

# リセット
    kill @e[type=marker,tag=7B.Target,distance=..50]
