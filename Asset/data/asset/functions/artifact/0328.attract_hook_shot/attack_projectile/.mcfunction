#> asset:artifact/0328.attract_hook_shot/attack_projectile/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/328/attack_projectile/

# ヒットした敵をプレイヤーの手前にテレポート
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Immovable,distance=..150] rotated ~ 0 run tp @s ^ ^ ^1

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Immovable,distance=..150] at @s run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 2 50 force @a[distance=..150]
    playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
