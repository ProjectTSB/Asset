#> asset:artifact/1029.conviction_bone/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1029.conviction_bone/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# これはまあ予備というか念の為のやつ。
    execute if entity @e[type=item_display,tag=SL.Sword,limit=1] run schedule function asset:artifact/1029.conviction_bone/trigger/sword/schedule 1t replace
    execute if entity @e[type=marker,tag=SL.Shot,limit=1] run schedule function asset:artifact/1029.conviction_bone/trigger/shot/schedule 1t replace

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1029.conviction_bone/trigger/3.main
