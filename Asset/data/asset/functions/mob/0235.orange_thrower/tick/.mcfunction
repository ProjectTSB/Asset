#> asset:mob/0235.orange_thrower/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/235/tick

# 演出
    particle dust 0 1 0 1.3 ~ ~2 ~ 0.05 0 0.05 0 1 normal @a

# スコア加算
    scoreboard players add @s General.Mob.Tick 1

# スコアが0の時、周囲にプレイヤーがいなければスコアを戻す
    execute if entity @s[scores={General.Mob.Tick=0}] unless entity @p[gamemode=!spectator,distance=..10] run scoreboard players set @s General.Mob.Tick -60

# 何回みかんを召喚するかをで決める
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0235.orange_thrower/tick/set_orange_count

# みかん召喚
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0235.orange_thrower/tick/attack
