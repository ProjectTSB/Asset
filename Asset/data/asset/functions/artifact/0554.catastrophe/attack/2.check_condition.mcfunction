#> asset:artifact/0554.catastrophe/attack/2.check_condition
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/0554.catastrophe/attack/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag set value {LocalCooldown:true}
    function asset:artifact/common/check_condition/head

# 装備をすべて身に着けているかチェックする
    data modify storage api: Argument.ID set value 262
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect{Stack:4} run tag @s remove CanUsed
# バニラダメージなら通さない
    execute if data storage asset:context Attack{IsVanilla:true} run tag @s remove CanUsed
# 使用不可なら終了
    execute if entity @s[tag=!CanUsed] run return fail

# 与ダメージ一定毎(10倍で記録)に発動
    execute store result score $FE.Temp Temporary run data get storage asset:context Attack.Amount 10
    scoreboard players operation @s FE.DamageSum += $FE.Temp Temporary
    scoreboard players reset $FE.Temp Temporary
    execute if entity @s[scores={FE.DamageSum=20000..}] run function asset:artifact/0554.catastrophe/attack/buff

# 再度チェック
    tag @s remove CanUsed
    data modify storage asset:artifact DisabledCheckFlag set value {CDMessage:true}
    function asset:artifact/common/check_condition/head
    execute if data storage asset:context Attack{IsDoT:true} run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0554.catastrophe/attack/3.main
