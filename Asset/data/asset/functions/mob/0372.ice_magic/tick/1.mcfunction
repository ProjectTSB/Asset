#> asset:mob/0372.ice_magic/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0372.ice_magic/_/tick

# スコア
# Tick < 80 の時、空中
# Tick >= 100の時、地面
    scoreboard players add @s AC.Tick 1

# 空中にいるときの処理
    execute if entity @s[scores={AC.Tick=..79}] run function asset:mob/0372.ice_magic/tick/2.in_air

# 地面にいるときの処理
    execute if entity @s[scores={AC.Tick=100..}] run function asset:mob/0372.ice_magic/tick/3.on_ground

# 消滅
    execute if entity @s[scores={AC.Tick=80..99}] run kill @s
    execute if entity @s[scores={AC.Tick=112..}] run kill @s
    execute at @s unless block ~ ~ ~ #lib:no_collision run kill @s
