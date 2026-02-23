#> asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/effect
#
#
#
# @within function asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/

# 演出
    execute at @s run function asset:artifact/1191.petals_of_spring_herald/trigger/give_barrier/vfx

# この神器によるバリア量を取得 (e2)
    data modify storage api: Argument.UUID set value [I;1,3,344,0]
    function api:entity/player/absorption/get
    execute store result score $CurrentBarrier Temporary run data get storage api: Return.Absorption.Amount 100

# 超過回復量のN%を取得 (e2)
    execute store result score $OverHeal Temporary run data get storage asset:temp Target.Over[-1] 100

# バリア量と超過回復量のN%を比較し、バリア量の方が多いならreturn
    execute if score $CurrentBarrier Temporary >= $OverHeal Temporary run return fail

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
