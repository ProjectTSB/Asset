#> asset:mob/0235.orange_thrower/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/235/tick

# 演出
    particle dust 0 1 0 1.3 ~ ~2 ~ 0.05 0 0.05 0 1 normal @a

# スコアが0以下の時は周囲にプレイヤーがいればスコアを増やす
# スコアが0以上なら強制的に増やす
# Tickの処理順の関係で0以上の方を先に書く
    execute if entity @s[scores={General.Mob.Tick=0..}] run scoreboard players add @s General.Mob.Tick 1
    execute if entity @s[scores={General.Mob.Tick=..0}] if entity @p[distance=..10] run scoreboard players add @s General.Mob.Tick 1

# スコアが0の時、周囲にプレイヤーがいなければスコアを戻す
    execute if entity @s[scores={General.Mob.Tick=0}] unless entity @p[distance=..10] run scoreboard players set @s General.Mob.Tick -60

# 何回みかんを召喚するかを難易度値で決める
# (2 * 難易度値 - 1)個召喚する
# 2(10 * (難易度値 - 1))Tick後にリセットするのでリセットするスコアを決めておく
    execute if entity @s[scores={General.Mob.Tick=0}] run function api:global_vars/get_difficulty
    execute if entity @s[scores={General.Mob.Tick=0}] store result score @s 6J.ResetTick run data get storage api: Return.Difficulty 20
    execute if entity @s[scores={General.Mob.Tick=0}] run scoreboard players remove @s 6J.ResetTick 20

# みかん召喚
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0235.orange_thrower/tick/attack
