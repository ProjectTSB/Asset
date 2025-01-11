#> asset:object/2196.down_dummy/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2196/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 近くのプレイヤーを自分の位置に移動
    execute unless entity @a[distance=..0.6] if entity @a[distance=0.8..1] as @p run tp @s ~ ~ ~

# 3秒後に消去
    execute if entity @s[scores={General.Object.Tick=60..}] run fill ~ ~1 ~ ~ ~1 ~ air replace barrier
    kill @s[scores={General.Object.Tick=60..}]
