#> asset:object/2106.convict_dead/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2106/tick

#> private
# @private
#declare function animated_java:convict/remove/this

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 音
    execute if score @s General.Object.Tick matches 19 run playsound ogg:block.sculk_sensor.sculk_clicking4 hostile @a ~ ~ ~ 1 0.6

# ボスドロなんだけど、そもそもまだマスターに上がってない
    execute if score @s General.Object.Tick matches 64 run function asset:object/2106.convict_dead/tick/drop
# 演出
    execute if score @s General.Object.Tick matches 64 run function asset:object/2106.convict_dead/tick/vfx

# AJ削除
    execute if score @s General.Object.Tick matches 64 as @e[type=item_display,distance=..0.1,sort=nearest,limit=1] run function animated_java:convict/remove/this

# AJアンロード
    execute if score @s General.Object.Tick matches 64 run data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_convict",Active:false}]
    execute if score @s General.Object.Tick matches 64 run function asset:datapack/set_activation_state

# 消滅処理
    kill @s[scores={General.Object.Tick=64..}]
