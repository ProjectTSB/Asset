#> asset:object/2141.louvert_soul_bomb/tick/process
#
#
#
# @within function asset:object/2141.louvert_soul_bomb/tick/

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# カウントダウン
    function asset:object/2141.louvert_soul_bomb/tick/countdown

# VFX
    function asset:object/2141.louvert_soul_bomb/tick/vfx

# 警告音
    function asset:object/2141.louvert_soul_bomb/tick/warning/

# 処理
    execute if score @s General.Object.Tick matches 201 run function asset:object/2141.louvert_soul_bomb/tick/cast

# TPする
    tp @s ~ ~ ~ ~1.5 0
