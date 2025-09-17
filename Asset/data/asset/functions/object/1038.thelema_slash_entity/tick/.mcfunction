#> asset:object/1038.thelema_slash_entity/tick/
#
# Objectのtick時の処理
#
# @within function asset:object/alias/1038/tick

# スコア
    scoreboard players add @s General.Object.Tick 1

# 斬撃演出
# 1段目
    execute if entity @s[scores={1038.Count=1,General.Object.Tick=1}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash1.1
    execute if entity @s[scores={1038.Count=1,General.Object.Tick=2}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash1.2
    execute if entity @s[scores={1038.Count=1,General.Object.Tick=3}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash1.3
    execute if entity @s[scores={1038.Count=1,General.Object.Tick=4}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash1.4
    execute if entity @s[scores={1038.Count=1,General.Object.Tick=5}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash1.5

# 2段目
    execute if entity @s[scores={1038.Count=2,General.Object.Tick=1}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash2.1
    execute if entity @s[scores={1038.Count=2,General.Object.Tick=2}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash2.2
    execute if entity @s[scores={1038.Count=2,General.Object.Tick=3}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash2.3
    execute if entity @s[scores={1038.Count=2,General.Object.Tick=4}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash2.4
    execute if entity @s[scores={1038.Count=2,General.Object.Tick=5}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash2.5

# 3段目
    execute if entity @s[scores={1038.Count=3,General.Object.Tick=1}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash3.1
    execute if entity @s[scores={1038.Count=3,General.Object.Tick=2}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash3.2
    execute if entity @s[scores={1038.Count=3,General.Object.Tick=3}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash3.3
    execute if entity @s[scores={1038.Count=3,General.Object.Tick=4}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash3.4
    execute if entity @s[scores={1038.Count=3,General.Object.Tick=5}] run function asset:object/1038.thelema_slash_entity/tick/vfx/slash3.5

# playsound
    execute if entity @s[scores={1038.Count=1..2,General.Object.Tick=1..4}] run playsound block.amethyst_cluster.step player @a ~ ~ ~ 0.7 1.3
    execute if entity @s[scores={1038.Count=3,General.Object.Tick=1..4}] run playsound block.amethyst_cluster.step player @a ~ ~ ~ 0.7 0.8
    execute if entity @s[scores={1038.Count=1,General.Object.Tick=1..4}] run playsound entity.dolphin.jump player @a ~ ~ ~ 0.2 0.9

# 消滅処理
    kill @s[scores={General.Object.Tick=6..}]
