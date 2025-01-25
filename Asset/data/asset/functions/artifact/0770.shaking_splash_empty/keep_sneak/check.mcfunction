#> asset:artifact/0770.shaking_splash_empty/keep_sneak/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/770/keep_sneak/check


#> Private
# @private
    #declare score_holder $RotationY
    #declare score_holder $Diff

# Yのrotationを取得
    execute store result score $RotationY Temporary run data get entity @s Rotation[1]

# 差分を取得
    execute store result score $Diff Temporary run scoreboard players operation @s LE.OldRotationY -= $RotationY Temporary

# 負の値だった場合正の値にする
    execute if score $Diff Temporary matches ..-1 run scoreboard players operation $Diff Temporary *= $-1 Const

# 差が19以下ならCanUsedを削除
    execute if score $Diff Temporary matches ..19 run tag @s remove CanUsed

# リセット等
    scoreboard players operation @s LE.OldRotationY = $RotationY Temporary
    scoreboard players reset $Diff Temporary
    scoreboard players reset $RotationY Temporary