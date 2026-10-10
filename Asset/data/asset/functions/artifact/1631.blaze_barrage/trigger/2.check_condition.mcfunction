#> asset:artifact/1631.blaze_barrage/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1631.blaze_barrage/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedでないならreturn
    execute if entity @s[tag=!CanUsed] run return fail

# if functionで全て判定する
    execute unless function asset:artifact/1631.blaze_barrage/trigger/2.check_condition/if run tag @s remove CanUsed
    execute if entity @s[tag=!CanUsed] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    function asset:artifact/1631.blaze_barrage/trigger/3.main
