#> asset:artifact/0361.rainbow_crystal/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/361/click/

# 演出
    particle dust 255 255 255 1 ~ ~ ~ 15 0.25 15 0 1000 force @a
    stopsound @s * block.beacon.activate
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1

# 敵の位置で演出
    execute at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30] run particle dust 255 255 255 0.5 ~ ~0.25 ~ 0.025 5 0.025 0 100 force @a

# 物理
    data modify storage api: Argument.Damage set value 210f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementTypeNone set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30] run function api:damage/

    data modify storage api: Argument.Damage set value 210f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementTypeNone set value "Fire"
    function api:damage/modifier_continuation
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30] run function api:damage/

    data modify storage api: Argument.Damage set value 210f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementTypeNone set value "Water"
    function api:damage/modifier_continuation
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30] run function api:damage/

    data modify storage api: Argument.Damage set value 210f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementTypeNone set value "Thunder"
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30] run function api:damage/

# 魔法
    data modify storage api: Argument.Damage set value 210f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementTypeNone set value "None"
    function api:damage/modifier_continuation
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30] run function api:damage/

    data modify storage api: Argument.Damage set value 210f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementTypeNone set value "Fire"
    function api:damage/modifier_continuation
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30] run function api:damage/

    data modify storage api: Argument.Damage set value 210f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementTypeNone set value "Water"
    function api:damage/modifier_continuation
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30] run function api:damage/

    data modify storage api: Argument.Damage set value 210f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementTypeNone set value "Thunder"
    function api:damage/modifier_continuation
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30] run function api:damage/

# リセット
    function api:damage/reset
