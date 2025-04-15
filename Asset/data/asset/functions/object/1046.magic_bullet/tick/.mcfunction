#> asset:object/1046.magic_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1046/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if score @s General.Object.Tick matches ..20 run particle dust 0 0.8 1 0.8 ~ ~ ~ 0 0 0 0 1
    execute if score @s General.Object.Tick matches ..3 run playsound minecraft:entity.illusioner.prepare_blindness neutral @a ~ ~ ~ 0.5 1.8
    execute if score @s General.Object.Tick matches 4..6 run playsound minecraft:entity.illusioner.prepare_blindness neutral @a ~ ~ ~ 0.5 1.9
    execute if score @s General.Object.Tick matches ..9 run playsound minecraft:entity.illusioner.prepare_blindness neutral @a ~ ~ ~ 0.5 2
    execute if score @s General.Object.Tick matches 20 run function asset:object/1046.magic_bullet/tick/vfx

# AimToPlayer:trueなら魔法陣へテレポートする
    execute if score @s General.Object.Tick matches 20 if data storage asset:context this{AimToPlayer:true} run function asset:object/1046.magic_bullet/tick/teleport

# 20tick目からsuper.tick
    execute if score @s General.Object.Tick matches 20.. at @s run function asset:object/super.tick
