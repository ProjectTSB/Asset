#> asset:artifact/0295.call_elemental_familiar/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/295/click/check

# 既に召喚済みなら使えない。タグ付与じゃないと残ってるファミリアの数だけコマンドが実行されてしまう。つまりめっちゃうるさい。
    execute at @e[type=armor_stand,tag=87.Familiar] if score @s UserID = @e[type=armor_stand,tag=87.Familiar,distance=..0.01,sort=nearest,limit=1] 87.UserID run tag @s add 87.CannotUse
    execute if entity @s[tag=87.CannotUse] run tag @s remove CanUsed
    execute if entity @s[tag=87.CannotUse] run function asset:artifact/0295.call_elemental_familiar/click/3.cannot_use
