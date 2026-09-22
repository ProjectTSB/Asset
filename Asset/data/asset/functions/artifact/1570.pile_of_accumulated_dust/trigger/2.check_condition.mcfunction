#> asset:artifact/1570.pile_of_accumulated_dust/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1570.pile_of_accumulated_dust/trigger/1.trigger

#> Private
# @private
    #declare score_holder $AttackCount

# ID指定する
    data modify storage asset:artifact TargetID set value 1570
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag set value {MPRequire:true}
    function asset:artifact/common/check_condition/hotbar

#バニラ起因の攻撃ならreturn
    execute if data storage asset:context Attack{IsVanilla:true} run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# Toの要素数を取得し、加算
    execute store result score $AttackCount Temporary if data storage asset:context Attack.To[]
    scoreboard players operation @s 17M.AttackCount += $AttackCount Temporary
# リセット
    scoreboard players reset $AttackCount Temporary
    
# 回数が530未満ならreturn
    execute unless entity @s[scores={17M.AttackCount=530..}] run return fail

# 再度チェック
    tag @s remove CanUsed
    function asset:artifact/common/check_condition/hotbar

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1570.pile_of_accumulated_dust/trigger/3.main
