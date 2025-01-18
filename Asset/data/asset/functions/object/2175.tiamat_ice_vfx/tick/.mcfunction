#> asset:object/2175.tiamat_ice_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2175/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if entity @s[scores={General.Object.Tick=3}] run particle end_rod ~ ~2 ~ 0.5 0.5 0.5 0.5 30
    execute if entity @s[scores={General.Object.Tick=3}] on passengers run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[7f,7f,7f]}}
    execute if entity @s[scores={General.Object.Tick=3}] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.4f,0f],scale:[7f,7f,7f]}}
    execute if entity @s[scores={General.Object.Tick=3}] on passengers run data modify entity @s transformation.scale set from storage asset:context this.Scale
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s transformation.scale set from storage asset:context this.Scale
    execute if entity @s[scores={General.Object.Tick=3}] if data storage asset:context this.OverrideScale on passengers run data modify entity @s transformation.scale set from storage asset:context this.OverrideScale
    execute if entity @s[scores={General.Object.Tick=3}] if data storage asset:context this.OverrideScale run data modify entity @s transformation.scale set from storage asset:context this.OverrideScale
    execute if entity @s[scores={General.Object.Tick=8}] run playsound ogg:block.amethyst.break3 hostile @a ~ ~ ~ 1 0.5
    execute if entity @s[scores={General.Object.Tick=8}] run playsound ogg:block.iron_trapdoor.close3 neutral @a ~ ~ ~ 1 0
    execute if entity @s[scores={General.Object.Tick=8}] run playsound ui.stonecutter.take_result neutral @a ~ ~ ~ 1 1
    execute if entity @s[scores={General.Object.Tick=8}] run playsound item.trident.hit neutral @a ~ ~ ~ 1 1
    execute if entity @s[scores={General.Object.Tick=8}] run playsound item.axe.scrape neutral @a ~ ~ ~ 1 1
    execute if entity @s[scores={General.Object.Tick=8}] run playsound block.anvil.break neutral @a ~ ~ ~ 1 0.5
    # execute if entity @s[scores={General.Object.Tick=8..15}] run particle firework ~ ~2 ~ 3 3 3 0.05 1
    execute if entity @s[scores={General.Object.Tick=8..30}] run function asset:object/2175.tiamat_ice_vfx/tick/particle

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=30..}] run function asset:object/2175.tiamat_ice_vfx/tick/kill
