#> asset:effect/0247.great_demon_armor/fullset/passive
# @within function asset:effect/0247.great_demon_armor/tick/

# tickを取得
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick
# 2秒ごとに回復
    execute if data storage asset:context this{Tick:0} run function asset:effect/0247.great_demon_armor/fullset/heal
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set value 40
