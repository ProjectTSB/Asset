#> asset:artifact/1462.ice_brand_arts_spear/trigger/yari
#
# 神器のメイン処理部
#
# @within function asset:artifact/1462.ice_brand_arts_spear/trigger/3.main

#根元部分(手元付近は魔力が力強く荒ぶる)
    execute at @s anchored eyes positioned ^ ^ ^1.0 run particle minecraft:dust 0.9 0.95 1.0 1.0 ~ ~ ~ 0.02 0.02 0.02 0 3
    execute at @s anchored eyes positioned ^ ^ ^1.0 run particle minecraft:dust 0.6 0.8 1.0 1.2 ~ ~ ~ 0.20 0.20 0.20 0 10
    execute at @s anchored eyes positioned ^ ^ ^1.5 run particle minecraft:dust 0.9 0.95 1.0 1.0 ~ ~ ~ 0.02 0.02 0.02 0 3
    execute at @s anchored eyes positioned ^ ^ ^1.5 run particle minecraft:dust 0.6 0.8 1.0 1.1 ~ ~ ~ 0.18 0.18 0.18 0 10
    execute at @s anchored eyes positioned ^ ^ ^2.0 run particle minecraft:dust 0.9 0.95 1.0 0.9 ~ ~ ~ 0.02 0.02 0.02 0 3
    execute at @s anchored eyes positioned ^ ^ ^2.0 run particle minecraft:dust 0.6 0.8 1.0 1.0 ~ ~ ~ 0.16 0.16 0.16 0 10
    execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:dust 0.9 0.95 1.0 0.9 ~ ~ ~ 0.02 0.02 0.02 0 3
    execute at @s anchored eyes positioned ^ ^ ^2.5 run particle minecraft:dust 0.6 0.8 1.0 1.0 ~ ~ ~ 0.14 0.14 0.14 0 10
    execute at @s anchored eyes positioned ^ ^ ^3.0 run particle minecraft:dust 0.9 0.95 1.0 0.8 ~ ~ ~ 0.02 0.02 0.02 0 3
    execute at @s anchored eyes positioned ^ ^ ^3.0 run particle minecraft:dust 0.6 0.8 1.0 0.9 ~ ~ ~ 0.12 0.12 0.12 0 8

#中間部分(拡散範囲を徐々に狭めて一本の線にしていく)
    execute at @s anchored eyes positioned ^ ^ ^3.5 run particle minecraft:dust 0.9 0.95 1.0 0.8 ~ ~ ~ 0.02 0.02 0.02 0 3
    execute at @s anchored eyes positioned ^ ^ ^3.5 run particle minecraft:dust 0.6 0.8 1.0 0.8 ~ ~ ~ 0.10 0.10 0.10 0 8
    execute at @s anchored eyes positioned ^ ^ ^4.0 run particle minecraft:dust 0.9 0.95 1.0 0.7 ~ ~ ~ 0.02 0.02 0.02 0 3
    execute at @s anchored eyes positioned ^ ^ ^4.0 run particle minecraft:dust 0.6 0.8 1.0 0.7 ~ ~ ~ 0.08 0.08 0.08 0 8
    execute at @s anchored eyes positioned ^ ^ ^4.5 run particle minecraft:dust 0.9 0.95 1.0 0.7 ~ ~ ~ 0.01 0.01 0.01 0 3
    execute at @s anchored eyes positioned ^ ^ ^4.5 run particle minecraft:dust 0.6 0.8 1.0 0.7 ~ ~ ~ 0.07 0.07 0.07 0 8
    execute at @s anchored eyes positioned ^ ^ ^5.0 run particle minecraft:dust 0.9 0.95 1.0 0.7 ~ ~ ~ 0.01 0.01 0.01 0 3
    execute at @s anchored eyes positioned ^ ^ ^5.0 run particle minecraft:dust 0.6 0.8 1.0 0.6 ~ ~ ~ 0.06 0.06 0.06 0 6
    execute at @s anchored eyes positioned ^ ^ ^5.5 run particle minecraft:dust 0.9 0.95 1.0 0.6 ~ ~ ~ 0.01 0.01 0.01 0 3
    execute at @s anchored eyes positioned ^ ^ ^5.5 run particle minecraft:dust 0.6 0.8 1.0 0.6 ~ ~ ~ 0.05 0.05 0.05 0 6
    execute at @s anchored eyes positioned ^ ^ ^6.0 run particle minecraft:dust 0.9 0.95 1.0 0.6 ~ ~ ~ 0.01 0.01 0.01 0 3
    execute at @s anchored eyes positioned ^ ^ ^6.0 run particle minecraft:dust 0.6 0.8 1.0 0.5 ~ ~ ~ 0.04 0.04 0.04 0 6
    execute at @s anchored eyes positioned ^ ^ ^6.5 run particle minecraft:dust 0.9 0.95 1.0 0.5 ~ ~ ~ 0.01 0.01 0.01 0 3
    execute at @s anchored eyes positioned ^ ^ ^6.5 run particle minecraft:dust 0.6 0.8 1.0 0.5 ~ ~ ~ 0.035 0.035 0.035 0 6

#先端部分(サイズは0.4以上をキープしつつ発生数を増やして寿命を長く見せる)
    execute at @s anchored eyes positioned ^ ^ ^7.0 run particle minecraft:dust 0.9 0.95 1.0 0.5 ~ ~ ~ 0.01 0.01 0.01 0 5
    execute at @s anchored eyes positioned ^ ^ ^7.0 run particle minecraft:dust 0.6 0.8 1.0 0.5 ~ ~ ~ 0.03 0.03 0.03 0 6
    execute at @s anchored eyes positioned ^ ^ ^7.5 run particle minecraft:dust 0.9 0.95 1.0 0.5 ~ ~ ~ 0.01 0.01 0.01 0 5
    execute at @s anchored eyes positioned ^ ^ ^7.5 run particle minecraft:dust 0.6 0.8 1.0 0.5 ~ ~ ~ 0.025 0.025 0.025 0 6
    execute at @s anchored eyes positioned ^ ^ ^8.0 run particle minecraft:dust 0.9 0.95 1.0 0.5 ~ ~ ~ 0.01 0.01 0.01 0 5
    execute at @s anchored eyes positioned ^ ^ ^8.0 run particle minecraft:dust 0.6 0.8 1.0 0.5 ~ ~ ~ 0.02 0.02 0.02 0 6
    execute at @s anchored eyes positioned ^ ^ ^8.5 run particle minecraft:dust 0.9 0.95 1.0 0.4 ~ ~ ~ 0.0 0.0 0.0 0 5
    execute at @s anchored eyes positioned ^ ^ ^8.5 run particle minecraft:dust 0.6 0.8 1.0 0.4 ~ ~ ~ 0.015 0.015 0.015 0 6
    execute at @s anchored eyes positioned ^ ^ ^9.0 run particle minecraft:dust 0.9 0.95 1.0 0.4 ~ ~ ~ 0.0 0.0 0.0 0 6
    execute at @s anchored eyes positioned ^ ^ ^9.0 run particle minecraft:dust 0.6 0.8 1.0 0.4 ~ ~ ~ 0.01 0.01 0.01 0 6
    execute at @s anchored eyes positioned ^ ^ ^9.5 run particle minecraft:dust 0.9 0.95 1.0 0.4 ~ ~ ~ 0.0 0.0 0.0 0 6
    execute at @s anchored eyes positioned ^ ^ ^9.5 run particle minecraft:dust 0.6 0.8 1.0 0.4 ~ ~ ~ 0.005 0.005 0.005 0 6

#最も鋭い先端部分(広がりを0にし、まとまったパーティクルを多めに配置して存在感を出す)
    execute at @s anchored eyes positioned ^ ^ ^10.0 run particle minecraft:dust 0.9 0.95 1.0 0.4 ~ ~ ~ 0.0 0.0 0.0 0 8
    execute at @s anchored eyes positioned ^ ^ ^10.0 run particle minecraft:dust 0.6 0.8 1.0 0.4 ~ ~ ~ 0.0 0.0 0.0 0 8
