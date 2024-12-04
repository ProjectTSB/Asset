#> asset:artifact/0987.ghost_step/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/987/click/check

# 既に発動している場合、テレポートはここで発動してしまう(MP消費したくないし)
    execute if entity @s[tag=CanUsed] as @e[type=item_display,tag=RF.Bullet,distance=..150] if score @s RF.UserID = @p[tag=this] UserID run tag @s remove CanUsed
    execute as @e[type=item_display,tag=RF.Bullet,distance=..150] if score @s RF.UserID = @p[tag=this] UserID at @s run function asset:artifact/0987.ghost_step/trigger/teleport
