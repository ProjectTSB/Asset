#> asset:object/2194.labyria_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2194/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルをTPさせる
    execute if score @s General.Object.Tick matches 1 as @e[type=item_display,tag=AX.ModelRoot,distance=..100] run tp @s ^ ^ ^ ~ ~

# パーティクル処理
    execute if score @s General.Object.Tick matches 105 as @e[type=item_display,tag=AX.ModelRoot,distance=..100] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    execute if score @s General.Object.Tick matches 105 as @e[type=item_display,tag=AX.ModelRoot,distance=..100] at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1 1

# アニメーション終了処理
    execute if score @s General.Object.Tick matches 108 run function asset:object/2194.labyria_death/tick/kill
