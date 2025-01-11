#> asset:object/2193.ecual_death/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2193/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデルをTPさせる
    execute if score @s General.Object.Tick matches 1 as @e[type=item_display,tag=AW.ModelRoot,distance=..100] run tp @s ^ ^ ^ ~ ~

# パーティクル処理
    execute if score @s General.Object.Tick matches 102 as @e[type=item_display,tag=AW.ModelRoot,distance=..250] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    execute if score @s General.Object.Tick matches 102 as @e[type=item_display,tag=AW.ModelRoot,distance=..250] at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1 1

# アニメーション終了処理
    execute if score @s General.Object.Tick matches 105 run function asset:object/2193.ecual_death/tick/kill
