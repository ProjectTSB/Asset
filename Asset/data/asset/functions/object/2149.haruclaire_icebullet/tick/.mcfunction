#> asset:object/2149.haruclaire_icebullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2149/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# きらきら
    particle firework ~ ~ ~ 0.1 0.1 0.1 0.1 1

# 出現
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:15,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

# 移動
    execute if entity @s[scores={General.Object.Tick=20}] run playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
    execute if entity @s[scores={General.Object.Tick=20}] run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
    execute if entity @s[scores={General.Object.Tick=20..}] run function asset:object/super.tick
    execute if entity @s[tag=2149.IsPiece,scores={General.Object.Tick=20..}] at @s run tp @s ~ ~ ~ ~ ~5

# 消滅処理
    kill @s[scores={General.Object.Tick=400..}]
