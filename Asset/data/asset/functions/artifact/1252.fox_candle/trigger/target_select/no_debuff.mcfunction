#> asset:artifact/1252.fox_candle/trigger/target_select/no_debuff
#
# DoTが付与されてないやつをターゲットとする
#
# @within function asset:artifact/1252.fox_candle/trigger/3.main

# ターゲットがもう最大数まで見つかっているならreturn
    execute if data storage asset:temp Temp{Count:0} run return fail

# 自身に狐火が付与されているか？
    data modify storage api: Argument.ID set value 352
    function api:entity/mob/effect/get/from_id

# 付与されていなければターゲットとする
    execute unless data storage api: Return.Effect run tag @s add YS.Target
    execute unless data storage api: Return.Effect store result storage asset:temp Temp.Count int 0.9999999999 run data get storage asset:temp Temp.Count
