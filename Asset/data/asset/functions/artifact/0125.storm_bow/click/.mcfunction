#> asset:artifact/0125.storm_bow/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/125/click/

#> private
# @private
    #declare tag ArrowTarget

# 不発処理
    execute unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,limit=1] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2
    execute unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,limit=1] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 30
    execute unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..10,limit=1] run return fail

# 成功時の処理
    clear @s minecraft:arrow 1
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 1

# 矢を降らす
    tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..15,sort=random,limit=1] add ArrowTarget
    execute at @e[type=#lib:living,type=!player,tag=ArrowTarget,distance=..15,limit=1] run summon arrow ~-0.4 ~7 ~ {pickup:0b,damage:10d,crit:1b,Motion:[0.2,-1.0,0.0]}
    execute at @e[type=#lib:living,type=!player,tag=ArrowTarget,distance=..15,limit=1] run particle minecraft:cloud ~-0.4 ~7 ~ 0.1 0 0.1 0.01 10
    tag @e[tag=ArrowTarget,limit=1] remove ArrowTarget

# 2回目
    tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..15,sort=random,limit=1] add ArrowTarget
    execute at @e[type=#lib:living,type=!player,tag=ArrowTarget,distance=..15,limit=1] run summon arrow ~ ~6 ~1 {pickup:0b,damage:10d,crit:1b,Motion:[0.0,-1.0,-0.3]}
    execute at @e[type=#lib:living,type=!player,tag=ArrowTarget,distance=..15,limit=1] run particle minecraft:cloud ~ ~6 ~1 0.1 0 0.1 0.01 10
    tag @e[tag=ArrowTarget,limit=1] remove ArrowTarget

# 3回目
    tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..15,sort=random,limit=1] add ArrowTarget
    execute at @e[type=#lib:living,type=!player,tag=ArrowTarget,distance=..15,limit=1] run summon arrow ~ ~6 ~1 {pickup:0b,damage:10d,crit:1b,Motion:[0.0,-1.0,-0.3]}
    execute at @e[type=#lib:living,type=!player,tag=ArrowTarget,distance=..15,limit=1] run particle minecraft:cloud ~ ~6 ~1 0.1 0 0.1 0.01 10
    tag @e[tag=ArrowTarget,limit=1] remove ArrowTarget

# 4回目
    tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..15,sort=random,limit=1] add ArrowTarget
    execute at @e[type=#lib:living,type=!player,tag=ArrowTarget,distance=..15,limit=1] run summon arrow ~0.4 ~4 ~1.6 {pickup:0b,damage:10d,crit:1b,Motion:[-0.2,-1.0,-0.8]}
    execute at @e[type=#lib:living,type=!player,tag=ArrowTarget,distance=..15,limit=1] run particle minecraft:cloud ~0.4 ~4 ~1.6 0.1 0 0.1 0.01 10
    tag @e[tag=ArrowTarget,limit=1] remove ArrowTarget

# 5回目
    tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..15,sort=random,limit=1] add ArrowTarget
    execute at @e[type=#lib:living,type=!player,tag=ArrowTarget,distance=..15,limit=1] run summon arrow ~0.4 ~7 ~ {pickup:0b,damage:10d,crit:1b,Motion:[-0.2,-1.0,0.0]}
    execute at @e[type=#lib:living,type=!player,tag=ArrowTarget,distance=..15,limit=1] run particle minecraft:cloud ~0.4 ~7 ~ 0.1 0 0.1 0.01 10
    tag @e[tag=ArrowTarget,limit=1] remove ArrowTarget
