#> asset:artifact/0266.angel_ray_lv.5/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/266/click/

# レイ用Entityの初期化
    summon minecraft:area_effect_cloud ~ ~1.4 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["7E.HolySymbol","Init","Object","Uninterferable"]}
    execute positioned ~ ~1.4 ~ run tp @e[type=area_effect_cloud,tag=Init,distance=..0.01] ~ ~ ~ ~ ~
# 初回演出
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"slowness",amplifier:5b,duration:13,show_particles:0b}]}
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.7
# レイ処理
    # 処理
        execute positioned ~ ~1.4 ~ as @e[type=area_effect_cloud,tag=Init,distance=..0.01] run function asset:artifact/0266.angel_ray_lv.5/click/ray
    # 次tick以降用にschedule予約
        schedule function asset:artifact/0266.angel_ray_lv.5/click/recursive 1t
# 効果処理
    execute positioned ~ ~1.4 ~ run function asset:artifact/0266.angel_ray_lv.5/click/effect/
# リセット
    execute positioned ~ ~1.4 ~ run tag @e[type=area_effect_cloud,tag=Init,distance=..0.01] remove Init
