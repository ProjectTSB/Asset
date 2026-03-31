#> asset:object/2273.gem_death_animation/tick/event
#
# Objectのtick時の処理
#
# @within function asset:object/2273.gem_death_animation/tick/

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# アニメーション再生
    execute if score @s General.Object.Tick matches 1 run function animated_java:gargo_ex_machina/animations/death/tween {duration:1, to_frame: 0}

# 演出
    execute if score @s General.Object.Tick matches 1 run playsound entity.item.break hostile @a ~ ~ ~ 3 0.5
    execute if score @s General.Object.Tick matches 1 run playsound entity.item.break hostile @a ~ ~ ~ 3 0.7
    execute if score @s General.Object.Tick matches 2 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 7 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 12 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 17 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 22 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 27 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 32 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 37 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 42 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 47 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 52 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 57 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 62 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 1..70 run particle explosion ~ ~20 ~ 4 7 4 0 5 force @a[distance=..80]

# 最後の大爆発
    execute if score @s General.Object.Tick matches 168 positioned ^ ^ ^-5 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 168 positioned ^ ^ ^-5 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.7
    execute if score @s General.Object.Tick matches 168 positioned ^ ^ ^-5 positioned ~ ~30 ~ run playsound item.trident.thunder hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s General.Object.Tick matches 168 positioned ^ ^ ^-5 run particle lava ~ ~8 ~ 5 5 5 0 100 force @a[distance=..80]
    execute if score @s General.Object.Tick matches 168 positioned ^ ^ ^-5 run particle explosion_emitter ~ ~8 ~ 3 3 3 0 10 force @a[distance=..80]
    execute if score @s General.Object.Tick matches 168 positioned ^ ^ ^-5 run particle campfire_signal_smoke ~ ~8 ~ 3 3 3 0.05 100 force @a[distance=..80]
    # 画面エフェクト
        execute if score @s General.Object.Tick matches 167 run title @a[distance=..160] times 3 0 30
        execute if score @s General.Object.Tick matches 167 run title @a[distance=..160] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}
    execute if score @s General.Object.Tick matches 168 positioned ^ ^ ^-5 positioned ~ ~8 ~ run function asset:object/2273.gem_death_animation/tick/summon_bullet

# モデル消去
    execute if score @s General.Object.Tick matches 169.. run function animated_java:gargo_ex_machina/remove/all
