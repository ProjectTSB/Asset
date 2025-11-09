#> asset:artifact/1109.black_lily_of_priestess/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1109.black_lily_of_priestess/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1109
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 自身にデバフがあるかをチェック
    execute if entity @s[tag=CanUsed] run function api:entity/mob/effect/get/size/bad
    execute if entity @s[tag=CanUsed] store result score $UT.DebuffCount Temporary run data get storage api: Return.EffectSize.Bad
    execute if entity @s[tag=CanUsed] unless score $UT.DebuffCount Temporary matches 1.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1109.black_lily_of_priestess/trigger/3.main

# リセット
    scoreboard players reset $UT.DebuffCount Temporary
