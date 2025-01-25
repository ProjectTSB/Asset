#> asset:artifact/1029.conviction_bone/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1029/click/check


# これはまあ予備というか念の為のやつ。
    execute if entity @e[type=item_display,tag=SL.Sword,limit=1] run schedule function asset:artifact/1029.conviction_bone/click/sword/schedule 1t replace
    execute if entity @e[type=marker,tag=SL.Shot,limit=1] run schedule function asset:artifact/1029.conviction_bone/click/shot/schedule 1t replace
