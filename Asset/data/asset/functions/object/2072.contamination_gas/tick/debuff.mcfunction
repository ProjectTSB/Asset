#> asset:object/2072.contamination_gas/tick/debuff
#
#
#
# @within function asset:object/2072.contamination_gas/tick/

# 移動速度低下、暗闇、採掘速度低下、吐き気

# スタックのあるものは難易度比例でスタックが増える
# スタックのないものは難易度比例で効果時間が増える

# 難易度値取得
    function api:global_vars/get_difficulty

# 移動速度低下
    data modify storage api: Argument set value {ID:67,Duration:60}
    execute store result storage api: Argument.Stack int 3 run data get storage api: Return.Difficulty
    execute as @a[gamemode=!spectator,distance=..3] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 暗闇
    data modify storage api: Argument.ID set value 74
    execute store result storage api: Argument.Duration int 40 run data get storage api: Return.Difficulty
    execute as @a[gamemode=!spectator,distance=..3] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 採掘速度低下
    data modify storage api: Argument set value {ID:76,Duration:60}
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Difficulty
    execute as @a[gamemode=!spectator,distance=..3] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 吐き気
# 吐き気は効果時間を短めに設定する
    data modify storage api: Argument.ID set value 77
    execute store result storage api: Argument.Duration int 40 run data get storage api: Return.Difficulty
    execute as @a[gamemode=!spectator,distance=..3] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
