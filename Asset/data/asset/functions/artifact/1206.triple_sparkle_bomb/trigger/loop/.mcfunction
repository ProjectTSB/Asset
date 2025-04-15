#> asset:artifact/1206.triple_sparkle_bomb/trigger/loop/
#
#
#
# @within function
#   asset:artifact/1206.triple_sparkle_bomb/trigger/3.main
#   asset:artifact/1206.triple_sparkle_bomb/trigger/loop/main
#   asset:artifact/1206.triple_sparkle_bomb/trigger/rejoin_process

# 実行
    execute as @a[scores={XI.Tick=0..}] at @s run function asset:artifact/1206.triple_sparkle_bomb/trigger/loop/main
