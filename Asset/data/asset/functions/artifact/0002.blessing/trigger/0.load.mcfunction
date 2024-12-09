#> asset:artifact/0002.blessing/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function asset:artifact/0002.blessing/trigger/**
    scoreboard objectives add 02.Trigger trigger
    scoreboard objectives add 02.SelectCount dummy
    scoreboard objectives add 02.SelectBonusSum dummy

# 初期化
    scoreboard players set $BonusHealthSelectCount 02.SelectCount 0
    scoreboard players set $BonusMPSelectCount 02.SelectCount 0
    scoreboard players set $BonusAttackSelectCount 02.SelectCount 0
    scoreboard players set $BonusDefenseSelectCount 02.SelectCount 0
    scoreboard players set $SelectBonusHealthSum 02.SelectBonusSum 0
    scoreboard players set $SelectBonusMPSum 02.SelectBonusSum 0
