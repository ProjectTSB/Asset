#> asset:mob/0077.chorus_zombie/attack/teleport/do
# @within function asset:mob/0077.chorus_zombie/attack/teleport/

# 演出
    particle reverse_portal ~ ~ ~ 0.2 0.4 0.2 0.5 20 normal
    playsound entity.enderman.teleport player @a ~ ~ ~ 1 1

# テレポート
    tp @s @e[type=marker,tag=25.Spread,limit=1]

# 演出
    execute at @s run particle portal ~ ~ ~ 0.2 0.4 0.2 0.5 30 normal
    execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 1 1
