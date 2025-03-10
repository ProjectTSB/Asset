#> asset:artifact/0125.storm_bow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0125.storm_bow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う mainhand/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 不発処理
    execute unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,limit=1] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2
    execute unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,limit=1] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 30
    execute unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,limit=1] run return fail

# 成功時の処理
    clear @s minecraft:arrow 1
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1

# 矢を降らす
    execute as 0-0-0-0-0 at @s run function asset:artifact/0125.storm_bow/trigger/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-88,PitchMax:-73}
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=random,limit=1] at @s rotated as 0-0-0-0-0 positioned ^ ^ ^16 run function asset:artifact/0125.storm_bow/trigger/summon_arrow.m
# 2回目
    execute as 0-0-0-0-0 at @s run function asset:artifact/0125.storm_bow/trigger/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-88,PitchMax:-73}
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=random,limit=1] at @s rotated as 0-0-0-0-0 positioned ^ ^ ^16 run function asset:artifact/0125.storm_bow/trigger/summon_arrow.m
# 3回目
    execute as 0-0-0-0-0 at @s run function asset:artifact/0125.storm_bow/trigger/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-88,PitchMax:-73}
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=random,limit=1] at @s rotated as 0-0-0-0-0 positioned ^ ^ ^16 run function asset:artifact/0125.storm_bow/trigger/summon_arrow.m
# 4回目
    execute as 0-0-0-0-0 at @s run function asset:artifact/0125.storm_bow/trigger/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-88,PitchMax:-73}
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=random,limit=1] at @s rotated as 0-0-0-0-0 positioned ^ ^ ^16 run function asset:artifact/0125.storm_bow/trigger/summon_arrow.m
# 5回目
    execute as 0-0-0-0-0 at @s run function asset:artifact/0125.storm_bow/trigger/random_rotate/m {Mode:"",YawMin:0,YawMax:359,PitchMin:-88,PitchMax:-73}
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,sort=random,limit=1] at @s rotated as 0-0-0-0-0 positioned ^ ^ ^16 run function asset:artifact/0125.storm_bow/trigger/summon_arrow.m
