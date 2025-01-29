#> asset:artifact/0905.book_of_metastasis/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/905/click/check

# tpbanでは使用不可
    execute if predicate lib:is_ban_tp_area run function lib:message/artifact/can_not_use_here
    execute if predicate lib:is_ban_tp_area run tag @s remove CanUsed

# 念のためtpbanならreturnしておく
    execute if predicate lib:is_ban_tp_area run return 0

# 既に発動している場合、テレポートはここで発動してしまう(MP消費したくないし)
    execute if entity @s[tag=CanUsed] as @e[type=area_effect_cloud,tag=P5.Bullet,distance=..150] if score @s P5.UserID = @p[tag=this] UserID run tag @s remove CanUsed
    execute as @e[type=area_effect_cloud,tag=P5.Bullet,distance=..150] if score @s P5.UserID = @p[tag=this] UserID at @s run function asset:artifact/0905.book_of_metastasis/click/teleport
