#> asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/thunder/
#
# 雷を一定間隔で落とす処理
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/

# 一定間隔で実行
    # 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $80 Const

# 4つ落とす
    execute if score $Interval Temporary matches 0 run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/thunder/summon

# 4つ落とす
    execute if score $Interval Temporary matches 40 rotated ~45 ~ run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/thunder/summon

# リセット
    scoreboard players reset $Interval Temporary
