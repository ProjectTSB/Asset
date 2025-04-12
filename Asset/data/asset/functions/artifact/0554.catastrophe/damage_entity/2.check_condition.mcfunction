#> asset:artifact/0554.catastrophe/damage_entity/2.check_condition
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/0554.catastrophe/damage_entity/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/head
# 他にアイテム等確認する場合はここに書く

# 装備をすべて身に着けているかチェックする
    data modify storage api: Argument.ID set value 262
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed

# 前回使用から一定時間経過しているかチェックする
    execute store result score $FE.Temp Temporary run data get storage global Time
    scoreboard players operation $FE.Temp Temporary -= @s FE.LatestUseTick
    execute unless score $FE.Temp Temporary matches 20.. run tag @s remove CanUsed
    scoreboard players reset $FE.Temp Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0554.catastrophe/damage_entity/3.main
