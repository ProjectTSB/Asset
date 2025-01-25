#> asset:artifact/0125.storm_bow/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/125/click/


# 不発処理
    execute unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,limit=1] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2
    execute unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,limit=1] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 30
    execute unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,limit=1] run return fail

# 成功時の処理
    clear @s minecraft:arrow 1
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1

# 矢を降らす
    execute as 0-0-0-0-0 at @s run function asset:artifact/0125.storm_bow/click/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-88,PitchMax:-73}
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=random,limit=1] at @s rotated as 0-0-0-0-0 positioned ^ ^ ^16 run function asset:artifact/0125.storm_bow/click/summon_arrow.m
# 2回目
    execute as 0-0-0-0-0 at @s run function asset:artifact/0125.storm_bow/click/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-88,PitchMax:-73}
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=random,limit=1] at @s rotated as 0-0-0-0-0 positioned ^ ^ ^16 run function asset:artifact/0125.storm_bow/click/summon_arrow.m
# 3回目
    execute as 0-0-0-0-0 at @s run function asset:artifact/0125.storm_bow/click/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-88,PitchMax:-73}
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=random,limit=1] at @s rotated as 0-0-0-0-0 positioned ^ ^ ^16 run function asset:artifact/0125.storm_bow/click/summon_arrow.m
# 4回目
    execute as 0-0-0-0-0 at @s run function asset:artifact/0125.storm_bow/click/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-88,PitchMax:-73}
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=random,limit=1] at @s rotated as 0-0-0-0-0 positioned ^ ^ ^16 run function asset:artifact/0125.storm_bow/click/summon_arrow.m
# 5回目
    execute as 0-0-0-0-0 at @s run function asset:artifact/0125.storm_bow/click/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-88,PitchMax:-73}
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=random,limit=1] at @s rotated as 0-0-0-0-0 positioned ^ ^ ^16 run function asset:artifact/0125.storm_bow/click/summon_arrow.m
