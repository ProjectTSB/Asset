#> asset:artifact/0963.hunters_amulet/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/963/tick/check

execute unless predicate lib:is_sprinting run tag @s remove QR.Run
execute unless predicate lib:is_sprinting run tag @s remove CanUsed
function api:data_get/on_ground
execute unless data storage api: {OnGround:true} run tag @s remove CanUsed

execute if entity @s[tag=QR.Run] run tag @s remove CanUsed
