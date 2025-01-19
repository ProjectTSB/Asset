#> asset:object/2192.axia_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2192/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルをTPさせる
    execute if score @s General.Object.Tick matches 1 as @e[type=item_display,tag=AV.ModelRoot,distance=..100] run tp @s ^ ^ ^ ~ ~

# パーティクル処理
    execute if score @s General.Object.Tick matches 99 as @e[type=item_display,tag=AV.ModelRoot,distance=..100] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    execute if score @s General.Object.Tick matches 99 as @e[type=item_display,tag=AV.ModelRoot,distance=..100] at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1 1

# アニメーション終了処理
    execute if score @s General.Object.Tick matches 102 run function asset:object/2192.axia_death/tick/kill
