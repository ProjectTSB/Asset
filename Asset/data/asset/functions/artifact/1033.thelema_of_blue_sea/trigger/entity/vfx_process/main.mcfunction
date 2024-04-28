#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/main
#
# メイン処理部
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop

# スコア
    scoreboard players add @s SP.Tick 1

# 斬撃演出
# 1段目
    execute if entity @s[scores={SP.AttackCount=1,SP.Tick=1..2}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash1.1
    execute if entity @s[scores={SP.AttackCount=1,SP.Tick=2..3}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash1.2
    execute if entity @s[scores={SP.AttackCount=1,SP.Tick=3..4}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash1.3
    execute if entity @s[scores={SP.AttackCount=1,SP.Tick=4..5}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash1.4
    execute if entity @s[scores={SP.AttackCount=1,SP.Tick=5..6}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash1.5

# 2段目
    execute if entity @s[scores={SP.AttackCount=2,SP.Tick=1..2}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash2.1
    execute if entity @s[scores={SP.AttackCount=2,SP.Tick=2..3}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash2.2
    execute if entity @s[scores={SP.AttackCount=2,SP.Tick=3..4}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash2.3
    execute if entity @s[scores={SP.AttackCount=2,SP.Tick=4..5}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash2.4
    execute if entity @s[scores={SP.AttackCount=2,SP.Tick=5..6}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash2.5

# 3段目
    execute if entity @s[scores={SP.AttackCount=3,SP.Tick=1..2}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash3.1
    execute if entity @s[scores={SP.AttackCount=3,SP.Tick=2..3}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash3.2
    execute if entity @s[scores={SP.AttackCount=3,SP.Tick=3..4}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash3.3
    execute if entity @s[scores={SP.AttackCount=3,SP.Tick=4..5}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash3.4
    execute if entity @s[scores={SP.AttackCount=3,SP.Tick=5..6}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/vfx/slash3.5

# playsound
    execute if entity @s[scores={SP.AttackCount=1..2,SP.Tick=1..4}] run playsound block.amethyst_cluster.step player @a ~ ~ ~ 0.7 1.3
    execute if entity @s[scores={SP.AttackCount=3,SP.Tick=1..4}] run playsound block.amethyst_cluster.step player @a ~ ~ ~ 0.7 0.8
    execute if entity @s[scores={SP.AttackCount=1..3,SP.Tick=1..4}] run playsound entity.dolphin.jump player @a ~ ~ ~ 0.2 0.9