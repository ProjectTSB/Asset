#> asset:mob/0139.blast_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/139/tick

# Playerが近くに居た時のみ稼働
    execute if entity @p[distance=..25] run function asset:mob/0139.blast_eye/tick/2.1.active_tick
