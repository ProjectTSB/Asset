#> asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/effect
#
#
#
# @within function asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/

# 演出
    execute at @s run function asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/vfx

# 超過回復量のN%を取得 (e2)
    execute store result score $OverHeal Temporary run data get storage asset:temp Target.Amounts[-1] 100

# 調整班用
    # バリアの効果時間
        data modify storage api: Argument.Duration set value 600
    # バリア最大値(e2)
        scoreboard players set $MaxBarrier Temporary 2000

# エフェクト付与
    data modify storage api: Argument.ID set value 344
    execute store result storage api: Argument.FieldOverride.Barrier float 0.01 run scoreboard players operation $OverHeal Temporary < $MaxBarrier Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
