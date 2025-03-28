#> asset:object/1113.soulfire_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1113/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle soul_fire_flame ~ ~3.5 ~ 7 3.5 7 0 10
    particle soul_fire_flame ~ ~ ~ 0 0 0 1 1


    execute if score @s General.Object.Tick matches 4 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,0.5f,0f]}}
    execute if score @s General.Object.Tick matches 6 run playsound item.trident.hit_ground player @a ~ ~ ~ 1 1

    execute if score @s General.Object.Tick matches 50.. run function asset:object/1113.soulfire_sword/tick/vfx
    execute if score @s General.Object.Tick matches 50 run function asset:object/1113.soulfire_sword/tick/explode


# 消滅処理
    kill @s[scores={General.Object.Tick=54..}]
