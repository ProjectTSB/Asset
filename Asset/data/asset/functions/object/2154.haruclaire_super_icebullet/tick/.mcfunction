#> asset:object/2154.haruclaire_super_icebullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2154/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# きらきら
    particle firework ~ ~ ~ 0.1 0.1 0.1 0.1 1

# 出現
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:80,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]}}
    execute if entity @s[scores={General.Object.Tick=1..70}] run particle cloud ~ ~ ~ 0 0 0 0.3 1

# 移動
    execute if entity @s[scores={General.Object.Tick=80}] run playsound block.amethyst_block.place hostile @a ~ ~ ~ 2 1
    execute if entity @s[scores={General.Object.Tick=1..2}] facing entity @p[tag=!PlayerShouldInvulnerable] feet run tp @s ~ ~ ~ ~ ~-10
    execute if entity @s[scores={General.Object.Tick=3..115}] if predicate api:global_vars/difficulty/min/3_blessless facing entity @p[tag=!PlayerShouldInvulnerable] feet run tp @s ~ ~ ~ ~ ~-10
    execute if entity @s[scores={General.Object.Tick=80}] run data merge entity @s {start_interpolation:0,interpolation_duration:200,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[4f,4f,4f]}}
    execute if entity @s[scores={General.Object.Tick=80..}] run function asset:object/super.tick
    execute if entity @s[scores={General.Object.Tick=121..}] at @s run tp @s ~ ~ ~ ~ ~1

# 消滅処理
    kill @s[scores={General.Object.Tick=500..}]
