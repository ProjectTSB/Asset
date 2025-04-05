#> asset:object/2161.haruclaire_ic_pisces/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2161/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle firework ~ ~2.5 ~ 1 1 1 0 1

# 登場～待機
    execute if entity @s[tag=!2161.Attack] run function asset:object/2161.haruclaire_ic_pisces/tick/idle

# 攻撃
    execute if entity @s[tag=2161.Attack] run function asset:object/2161.haruclaire_ic_pisces/tick/attack

# 消滅処理
    execute if entity @s[tag=2161.Attack,scores={General.Object.Tick=75..}] run tag @s add AK.IceCreature.Remove
    execute if entity @s[tag=AK.IceCreature.Remove] run function asset:object/2161.haruclaire_ic_pisces/tick/kill
