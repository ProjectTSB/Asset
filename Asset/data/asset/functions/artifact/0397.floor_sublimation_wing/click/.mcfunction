#> asset:artifact/0397.floor_sublimation_wing/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/397/click/

# 演出(テレポート元)
    playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.3
    playsound minecraft:entity.player.attack.weak player @a ~ ~ ~ 1 0.2
    particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 1 150
    particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 5 30

# テレポート
    execute at @e[type=area_effect_cloud,tag=B1.Marker,distance=..32,limit=1] rotated as @s run tp @s ~ ~ ~

# 演出(テレポート後)
    execute at @s run particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 1 150
    execute at @s run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 5 30
    execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.3
    execute at @s run playsound minecraft:entity.player.attack.weak player @a ~ ~ ~ 1 0.2
