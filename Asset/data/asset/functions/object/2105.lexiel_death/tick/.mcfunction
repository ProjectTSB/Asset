#> asset:object/2105.lexiel_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2105/tick

#> private
# @private
#declare function animated_java:lexiel/remove/this

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute if score @s General.Object.Tick matches 1 run tp @s @e[type=item_display,distance=..0.1,sort=nearest,limit=1]

    execute if score @s General.Object.Tick matches 113

# 演出
    execute if score @s General.Object.Tick matches 140 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    execute if score @s General.Object.Tick matches 141 run particle block redstone_block ~ ~0.68 ~ 0 0 0 1 30
    execute if score @s General.Object.Tick matches 141 run playsound minecraft:entity.generic.death hostile @a ~ ~ ~

    execute if score @s General.Object.Tick matches 179 run particle block redstone_block ~ ~0.68 ~ 0 0 0 1 30
    execute if score @s General.Object.Tick matches 179 run playsound minecraft:entity.generic.death hostile @a ~ ~ ~

# 流れる血
    execute if score @s General.Object.Tick matches 190.. rotated ~ 0 positioned ~ ~0.9 ~ run particle dripping_lava ^ ^ ^-0.74 0 0 0 1 1

# 吐血
    execute if score @s General.Object.Tick matches 230 run playsound minecraft:entity.strider.death hostile @a ~ ~ ~ 1 0.8
    execute if score @s General.Object.Tick matches 230 positioned ^ ^ ^0.2 run particle block redstone_block ~ ~1.3 ~ 0 0 0 0 30

# ボスドロ
    execute if score @s General.Object.Tick matches 350 run function asset:object/2105.lexiel_death/tick/drop

# 消失
    execute if score @s General.Object.Tick matches 350 run particle minecraft:cloud ~ ~1.3 ~ 0 0 0 0.3 100
    execute if score @s General.Object.Tick matches 350 as @e[type=item_display,distance=..0.1,sort=nearest,limit=1] run function animated_java:lexiel/remove/this
    execute if score @s General.Object.Tick matches 350 run data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_lexiel",Active:false}]
    execute if score @s General.Object.Tick matches 350 run function asset:datapack/set_activation_state
    execute if score @s General.Object.Tick matches 350 run kill @s
