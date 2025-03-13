#> asset:object/2221.aurora_scaffold/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2221/tick

# vfx
    execute if predicate lib:random_pass_per/10 run particle dust_color_transition 0.000 1.000 0.886 0.7 0 0.235 1 ~ ~ ~ 0.4 0.4 0.4 0 1 normal @a

# Tick
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick

# 現座標が水色ステンドグラスでなければkill
    execute unless block ~ ~ ~ cyan_stained_glass run return run kill @s

# 40tick毎にOwnerが近くにいるかチェックする
    execute store result storage asset:context this.Interval int 0.9999999999 run data get storage asset:context this.Interval
    execute if data storage asset:context this{Interval:0} run function asset:object/2221.aurora_scaffold/tick/check_owner
    execute if data storage asset:context this{Interval:0} run data modify storage asset:context this.Interval set value 40

# 壊れる演出
    execute if data storage asset:context this{Tick:30} run data modify entity @s item set value {id:"stick",Count:1b,tag:{CustomModelData:20175}}
    execute if data storage asset:context this{Tick:27} run data modify entity @s item.tag.CustomModelData set value 20174
    execute if data storage asset:context this{Tick:24} run data modify entity @s item.tag.CustomModelData set value 20173
    execute if data storage asset:context this{Tick:21} run data modify entity @s item.tag.CustomModelData set value 20172
    execute if data storage asset:context this{Tick:18} run data modify entity @s item.tag.CustomModelData set value 20172
    execute if data storage asset:context this{Tick:15} run data modify entity @s item.tag.CustomModelData set value 20171
    execute if data storage asset:context this{Tick:12} run data modify entity @s item.tag.CustomModelData set value 20170
    execute if data storage asset:context this{Tick:9} run data modify entity @s item.tag.CustomModelData set value 20169
    execute if data storage asset:context this{Tick:6} run data modify entity @s item.tag.CustomModelData set value 20168
    execute if data storage asset:context this{Tick:3} run data modify entity @s item.tag.CustomModelData set value 20167

# 消滅処理
    execute if data storage asset:context this{Tick:0} run function asset:object/2221.aurora_scaffold/tick/break
