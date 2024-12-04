#> asset:artifact/0010.attack_order/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/10/click/


# 演出
    particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..30]
    playsound minecraft:entity.wither.hurt player @s ~ ~ ~ 20 0.3

# 召喚
    summon minecraft:iron_golem ~ ~ ~ {Tags:["Friend"]}
    summon minecraft:iron_golem ~ ~ ~ {Tags:["Friend"]}
    summon minecraft:snow_golem ~ ~ ~ {Health:100f, Attributes:[{Name:"generic.max_health", Base:100d}],Tags:["Friend"]}
    summon minecraft:snow_golem ~ ~ ~ {Health:100f, Attributes:[{Name:"generic.max_health", Base:100d}],Tags:["Friend"]}
    summon minecraft:iron_golem ~ ~ ~ {Tags:["Friend"],Passengers:[{id:"minecraft:snow_golem", Pumpkin:0b, Health:100f, Attributes:[{Name:"generic.max_health", Base:100d}],Tags:["Friend"]}]}
    summon minecraft:iron_golem ~ ~ ~ {Tags:["Friend"],Passengers:[{id:"minecraft:snow_golem", Pumpkin:0b, Health:100f, Attributes:[{Name:"generic.max_health", Base:100d}],Tags:["Friend"]}]}