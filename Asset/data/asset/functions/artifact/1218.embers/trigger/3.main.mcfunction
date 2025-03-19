#> asset:artifact/1218.embers/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1218.embers/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 0.7 1.7
    playsound minecraft:entity.puffer_fish.death player @a ~ ~ ~ 1 0

# 本体召喚
    data modify storage api: Argument.ID set value 1116
    data modify storage api: Argument.FieldOverride.Damage set value 1000
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute rotated ~ 58 run function api:object/summon

# 魔法陣召喚
    data modify storage api: Argument.ID set value 1117
    data modify storage api: Argument.FieldOverride.Scale set value [10d,10d,0.01d]
    data modify storage api: Argument.FieldOverride.Delay set value 5
    data modify storage api: Argument.FieldOverride.Interpolation set value 2
    data modify storage api: Argument.FieldOverride.LeftRotate set value true
    execute rotated ~ 90 run function api:object/summon

# 魔法陣召喚
    data modify storage api: Argument.ID set value 1117
    data modify storage api: Argument.FieldOverride.Scale set value [24d,24d,0.01d]
    data modify storage api: Argument.FieldOverride.Delay set value 7
    data modify storage api: Argument.FieldOverride.Interpolation set value 2
    data modify storage api: Argument.FieldOverride.LeftRotate set value true
    execute rotated ~ -32 positioned ^ ^ ^50 run function api:object/summon

# 魔法陣召喚
    data modify storage api: Argument.ID set value 1117
    data modify storage api: Argument.FieldOverride.Scale set value [12d,12d,0.01d]
    data modify storage api: Argument.FieldOverride.Delay set value 10
    data modify storage api: Argument.FieldOverride.Interpolation set value 2
    data modify storage api: Argument.FieldOverride.LeftRotate set value false
    execute rotated ~ -32 positioned ^ ^ ^30 run function api:object/summon

# 魔法陣召喚
    data modify storage api: Argument.ID set value 1117
    data modify storage api: Argument.FieldOverride.Scale set value [8d,8d,0.01d]
    data modify storage api: Argument.FieldOverride.Delay set value 15
    data modify storage api: Argument.FieldOverride.Interpolation set value 2
    data modify storage api: Argument.FieldOverride.LeftRotate set value true
    execute rotated ~ -32 positioned ^ ^ ^20 run function api:object/summon

# 魔法陣召喚
    data modify storage api: Argument.ID set value 1117
    data modify storage api: Argument.FieldOverride.Scale set value [4d,4d,0.01d]
    data modify storage api: Argument.FieldOverride.Delay set value 20
    data modify storage api: Argument.FieldOverride.Interpolation set value 2
    data modify storage api: Argument.FieldOverride.LeftRotate set value false
    execute rotated ~ -32 positioned ^ ^ ^10 run function api:object/summon
