#> asset:object/2051.lastboss_platform_attack_red/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2051/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大を開始
    execute if score @s General.Object.Tick matches 1 run function asset:object/2051.lastboss_platform_attack_red/tick/transform

# 攻撃
    execute if score @s General.Object.Tick matches 20 run function asset:object/call.m {method:explosion}

# 縮小開始
#    execute if score @s General.Object.Tick matches 25 run function asset:object/2051.lastboss_platform_attack_red/tick/vanish


# 消滅
    execute if score @s General.Object.Tick matches 30.. run kill @s
