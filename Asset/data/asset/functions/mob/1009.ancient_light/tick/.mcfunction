#> asset:mob/1009.ancient_light/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/1009/tick

# Tick加算
    scoreboard players add @s S1.Tick 1

# 追尾(初速)
    execute if score @s S1.Tick matches ..20 if entity @p[distance=..32] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.5 ~ ~

# 追尾(加速)
    execute if score @s S1.Tick matches 20.. if entity @p[distance=..32] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-3000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^1 ~ ~

# particle
    particle dust 0.8 1000000000 1000000000 1 ~ ~ ~ 0.3 0.3 0.3 1 5 normal @a

# ダメージ
<<<<<<< HEAD:Asset/data/asset/functions/mob/1009.ancient_light/tick/2.tick.mcfunction
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run function asset:mob/1009.ancient_light/tick/3.break

# 炸裂
    execute if score @s S1.Tick matches 60.. run function asset:mob/1009.ancient_light/tick/3.break
=======
    execute if entity @a[gamemode=!spectator,distance=..2] run function asset:mob/1009.ancient_light/tick/3.damage
>>>>>>> master:Asset/data/asset/functions/mob/1009.ancient_light/tick/.mcfunction
