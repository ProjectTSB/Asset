#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword
#
#
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop

# スコア
    scoreboard players add @s SP.Tick 1

# 少し上昇する
    execute if entity @s[scores={SP.Tick=..5}] run tp @s ~ ~0.1 ~

# 落ちる
    execute if entity @s[scores={SP.Tick=15..}] run tp @s ~ ~-1.2 ~

# ヒット処理


# 消滅
    execute if entity @s[scores={SP.Tick=25..}] run kill @s
    execute unless block ~ ~ ~ #lib:no_collision run kill @s