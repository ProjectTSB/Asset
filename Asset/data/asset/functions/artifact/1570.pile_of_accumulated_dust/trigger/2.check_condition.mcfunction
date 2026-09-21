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
    function asset:artifact/common/check_condition/hotbar

#バニラ起因の攻撃か継続ダメージならreturn
    execute if data storage asset:context Attack{IsVanilla:true} run tag @s remove CanUsed
    execute if data storage asset:context Attack{IsDoT:true} run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# Toの要素数を取得し、加算
    execute store result score $AttackCount Temporary if data storage asset:context Attack.To[]
    scoreboard players operation @s 17M.AttackCount += $AttackCount Temporary
    
# 回数が530未満ならCanUsedを削除
    execute unless entity @s[scores={17M.AttackCount=530..}] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1570.pile_of_accumulated_dust/trigger/3.main

# 530以上ならカウントをリセット
    execute if entity @s[scores={17M.AttackCount=530..}] run scoreboard players reset @s 17M.AttackCount

# リセット
    scoreboard players reset $AttackCount Temporary
