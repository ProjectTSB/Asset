#> asset:object/2180.tiamat_pillar/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2180/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# Kill準備の場合
    execute if entity @s[tag=2180.Pillar.Kill] run function asset:object/2180.tiamat_pillar/tick/tick_kill

# 帯電
    execute if entity @s[tag=2180.Pillar.Thunder] run function asset:object/2180.tiamat_pillar/tick/hit_thunder

# 拡大
    execute if entity @s[scores={General.Object.Tick=3}] run particle end_rod ~ ~2 ~ 0.5 0.5 0.5 0.5 30
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.4f,0f],scale:[5f,5f,5f]}}
    execute if entity @s[scores={General.Object.Tick=8}] run playsound ogg:block.amethyst.break3 hostile @a ~ ~ ~ 1 0.5
    execute if entity @s[scores={General.Object.Tick=8}] run playsound ogg:block.iron_trapdoor.close3 neutral @a ~ ~ ~ 1 0
    execute if entity @s[scores={General.Object.Tick=8}] run playsound ui.stonecutter.take_result neutral @a ~ ~ ~ 1 1
    execute if entity @s[scores={General.Object.Tick=8}] run playsound item.trident.hit neutral @a ~ ~ ~ 1 1
    execute if entity @s[scores={General.Object.Tick=8}] run playsound item.axe.scrape neutral @a ~ ~ ~ 1 1
    execute if entity @s[scores={General.Object.Tick=8}] run playsound block.anvil.break neutral @a ~ ~ ~ 1 0.5
    execute if entity @s[scores={General.Object.Tick=8..400}] run particle firework ~ ~4 ~ 2 4 2 0.05 1
    execute if entity @s[tag=2180.Pillar.Thunder.1] run particle firework ~ ~4 ~ 2 4 2 0.15 3
    execute if entity @s[tag=2180.Pillar.Thunder.2] run particle dust 1 0.761 0.247 2 ~ ~4 ~ 2 4 2 0 5

# 消滅処理
    execute if entity @s[tag=2180.Pillar.Death,tag=!2180.Pillar.Kill] run function asset:object/2180.tiamat_pillar/tick/start_kill
    execute if entity @s[tag=!2180.Pillar.Kill,scores={General.Object.Tick=400..}] run function asset:object/2180.tiamat_pillar/tick/start_kill
