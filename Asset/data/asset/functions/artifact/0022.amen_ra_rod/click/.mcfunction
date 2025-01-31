#> asset:artifact/0022.amen_ra_rod/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/22/click/

# 発光を付与
    effect give @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10] minecraft:glowing 3 0 true

# パーティクル
    execute at @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10] run particle end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..30]

# SE
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 20 1
