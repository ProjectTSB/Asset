#> asset:mob/0259.shadow_stalker/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/259/hurt

# 透明状態の時、被ダメ時にテレポート
# 拡散値
    execute if data storage asset:context Hurt{IsDoT:false} if entity @s[tag=77.Dark] run data modify storage lib: Argument.Bounds set value [[3d,3d],[0d,1d],[3d,3d]]
# 拡散する
    execute if data storage asset:context Hurt{IsDoT:false} if entity @s[tag=77.Dark] at @a[gamemode=!spectator,distance=..30,sort=random,limit=1] run function lib:spread_entity/

# 演出
    playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.spider.hurt hostile @a ~ ~ ~ 1 1.5
