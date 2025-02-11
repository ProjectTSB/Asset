#> asset:artifact/0214.web_shooter/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/214/click/

# 蜘蛛の巣を設置
    execute at @e[tag=Enemy,tag=!Uninterferable,distance=..7] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 cobweb replace air

# 演出
    execute if entity @e[tag=Enemy,tag=!Uninterferable,distance=..7] run playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 1
    execute if entity @e[tag=Enemy,tag=!Uninterferable,distance=..7] as @e[tag=Enemy,tag=!Uninterferable,distance=..7] at @s run particle poof ~ ~ ~ 0 0 0 0.5 100 normal
# 敵がいない時の演出
    execute unless entity @e[tag=Enemy,tag=!Uninterferable,distance=..7] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1
    execute unless entity @e[tag=Enemy,tag=!Uninterferable,distance=..7] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 50
