#> asset:artifact/0554.catastrophe/damage_entity/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/554/damage_entity/check

# 装備をすべて身に着けているかチェックする
    data modify storage api: Argument.ID set value 262
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed

# 前回使用から一定時間経過しているかチェックする
    execute store result score $FE.Temp Temporary run data get storage global Time
    scoreboard players operation $FE.Temp Temporary -= @s FE.LatestUseTick
    execute unless score $FE.Temp Temporary matches 20.. run tag @s remove CanUsed
    scoreboard players reset $FE.Temp Temporary
