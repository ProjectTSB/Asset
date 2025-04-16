#> asset:artifact/1274.spring_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1274.spring_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact IgnoreItemUpdate set value true
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 0.5 1

data modify storage api: Argument.ID set value 192
data modify storage api: Argument.Stack set value 8
data modify storage api: Argument.Duration set value 8
function api:entity/mob/effect/give
function api:entity/mob/effect/reset


function api:data_get/on_ground
execute if data storage api: {OnGround:false} run return 0

data modify storage api: Argument.ID set value 190
data modify storage api: Argument.Duration set value 40
function api:entity/mob/effect/give
function api:entity/mob/effect/reset
