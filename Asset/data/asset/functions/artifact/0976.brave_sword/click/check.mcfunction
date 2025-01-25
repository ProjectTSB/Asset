#> asset:artifact/0976.brave_sword/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/976/click/check


# CanUsedタグをチェックして.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0976.brave_sword/click/
