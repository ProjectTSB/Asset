#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/main
#
# 追撃の剣のメイン処理
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop

# スコア
    scoreboard players add @s SP.Tick 1

# 演出
    execute if entity @s[scores={SP.Tick=..10}] run execute if entity @s[scores={SP.Tick=..5}] run particle dust 1 1 100000000 1 ~ ~0.3 ~ 0 0 0 0 1 normal @a
    execute if entity @s[scores={SP.Tick=..10}] run particle dust 1 1 100000000 1 ~ ~0.5 ~ 0 0 0 0 1 normal @a

# 少し上昇する
    execute if entity @s[scores={SP.Tick=..5}] run tp @s ~ ~0.1 ~

# 落ちる
    execute if entity @s[scores={SP.Tick=15..}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/recursive
    scoreboard players reset $Count Temporary

# 消滅
    execute if entity @s[scores={SP.Tick=25..}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/hit