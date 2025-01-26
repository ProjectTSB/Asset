#> asset:mob/0374.gray_coffin/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/374/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 演出
    execute if predicate lib:random_pass_per/30 run particle witch ^ ^1 ^0.5 0.5 0.5 0.5 0 1 normal @a
    execute if predicate lib:random_pass_per/30 run particle witch ^ ^1 ^-0.5 0.5 0.5 0.5 0 1 normal @a

# 開閉を繰り返す
    execute if entity @s[scores={General.Mob.Tick=..1000}] run function asset:mob/0374.gray_coffin/tick/open_and_close

# ペナルティとして爆発する
    execute if entity @s[scores={General.Mob.Tick=1000..}] run function asset:mob/0374.gray_coffin/tick/penalty_ready
