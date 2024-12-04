#> asset:artifact/1051.blue_crystal_of_stardust/damage/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1051/damage/

# 自身と12m以内の現在体力割合の最も低いプレイヤー2名が回復の対象

# 自身に回復対象用のTagを付与
    tag @s add HealTarget

# 周囲の最も現在体力割合の低いプレイヤー2名を特定し、Tagを付与
    execute if entity @p[tag=!HealTarget,distance=..12] run function asset:artifact/1051.blue_crystal_of_stardust/damage/4.find_lowest_health_per_player
    execute if entity @p[tag=!HealTarget,distance=..12] run function asset:artifact/1051.blue_crystal_of_stardust/damage/4.find_lowest_health_per_player

# HealTargetのプレイヤーの位置で演出
    execute at @a[tag=HealTarget,distance=..12] run function asset:artifact/1051.blue_crystal_of_stardust/damage/vfx

# 使用者の最大体力の12%分、HealTargetが付与されたプレイヤーを回復
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.12 run data get storage api: Return.MaxHealth 1
    function api:heal/modifier
    execute as @a[tag=HealTarget,distance=..12] run function api:heal/
    function api:heal/reset

# リセット
    tag @a[tag=HealTarget] remove HealTarget
