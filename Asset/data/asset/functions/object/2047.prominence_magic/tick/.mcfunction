#> asset:object/2047.prominence_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2047/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 空中にいるときの処理
    execute if entity @s[scores={General.Object.Tick=..79}] run function asset:object/2047.prominence_magic/tick/in_air

# 1回目の爆発
    execute if entity @s[scores={General.Object.Tick=100}] run function asset:object/2047.prominence_magic/tick/damage

# 予備動作
    execute if entity @s[scores={General.Object.Tick=105}] rotated ~ 0 run function asset:object/2047.prominence_magic/tick/2nd_blast_ready

# 2回目の爆発
    execute if entity @s[scores={General.Object.Tick=120}] rotated ~ 0 run function asset:object/2047.prominence_magic/tick/2nd_blast

# 継承
    execute at @s if entity @s[scores={General.Object.Tick=..79}] run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
