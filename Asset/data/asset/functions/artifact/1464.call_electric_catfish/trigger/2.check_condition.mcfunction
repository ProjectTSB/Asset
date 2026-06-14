#> asset:artifact/1464.call_electric_catfish/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1464.call_electric_catfish/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand

# 追加チェック：地面に立っていないならCanUsed剝奪
    execute unless data entity @s[tag=CanUsed] {OnGround:1b} run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1464.call_electric_catfish/trigger/3.main
