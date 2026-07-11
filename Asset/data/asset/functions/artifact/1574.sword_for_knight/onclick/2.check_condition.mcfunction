#> asset:artifact/1574.sword_for_knight/onclick/2.check_condition
#
# @within function asset:artifact/1574.sword_for_knight/onclick/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1574.sword_for_knight/onclick/3.main
