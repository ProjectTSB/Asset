#> asset:object/2118.grey_guardian_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2118/tick

#> private
# @private
#declare function animated_java:grey_guardian/remove/this

# Tick加算
    scoreboard players add @s General.Object.Tick 1

    execute if score @s General.Object.Tick matches 5 run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 0

    execute if score @s General.Object.Tick matches 96 run playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    execute if score @s General.Object.Tick matches 96 run particle cloud ~ ~1 ~ 1 1 1 0.1 500
    execute if score @s General.Object.Tick matches 96 run particle explosion_emitter ~ ~1 ~ 2 2 2 0 30


# 消滅処理
    execute if score @s General.Object.Tick matches 96 as @e[type=item_display,distance=..0.1,sort=nearest,limit=1] run function animated_java:grey_guardian/remove/this
    execute if score @s General.Object.Tick matches 96 run function asset:object/2118.grey_guardian_death/tick/drop


# AJアンロード
    execute if score @s General.Object.Tick matches 96 run data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_GreyGuardian",Active:false}]
    execute if score @s General.Object.Tick matches 96 run function asset:datapack/set_activation_state


    kill @s[scores={General.Object.Tick=96..}]
