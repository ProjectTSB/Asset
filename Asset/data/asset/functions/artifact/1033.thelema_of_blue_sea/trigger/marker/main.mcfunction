#> asset:artifact/1033.thelema_of_blue_sea/trigger/marker/main
#
# メイン処理部
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/marker/loop

# スコア
    scoreboard players add @s SP.Tick 1

# 斬撃演出
# 1段目
    execute if entity @s[scores={SP.AttackCount=1,SP.Tick=1..2}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/vfx/slash1.1
    execute if entity @s[scores={SP.AttackCount=1,SP.Tick=2..3}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/vfx/slash1.2
    execute if entity @s[scores={SP.AttackCount=1,SP.Tick=3..4}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/vfx/slash1.3

# 2段目
    execute if entity @s[scores={SP.AttackCount=2,SP.Tick=1..2}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/vfx/slash2.1
    execute if entity @s[scores={SP.AttackCount=2,SP.Tick=2..3}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/vfx/slash2.2
    execute if entity @s[scores={SP.AttackCount=2,SP.Tick=3..4}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/vfx/slash2.3

# playsound
    execute if entity @s[scores={SP.AttackCount=1..2,SP.Tick=1..4}] run playsound block.amethyst_cluster.step player @a ~ ~ ~ 0.5 1.3
    execute if entity @s[scores={SP.AttackCount=1..2,SP.Tick=1..4}] run playsound entity.dolphin.jump player @a ~ ~ ~ 0.15 0.9

# ループ
    schedule function asset:artifact/1033.thelema_of_blue_sea/trigger/marker/loop 1t replace

# kill
    execute if entity @s[scores={SP.Tick=100..}] run kill @s