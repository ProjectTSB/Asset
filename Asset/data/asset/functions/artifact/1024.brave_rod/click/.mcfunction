#> asset:artifact/1024.brave_rod/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1024/click/


# スコア持ってないなら0に
    execute unless entity @s[scores={SG.Combo=0..}] run scoreboard players set @s SG.Combo 0

# 攻撃
    execute if entity @s[scores={SG.Combo=0}] anchored eyes positioned ^ ^ ^ run function asset:artifact/1024.brave_rod/click/combo/beam1
    execute if entity @s[scores={SG.Combo=1}] anchored eyes positioned ^ ^ ^ run function asset:artifact/1024.brave_rod/click/combo/beam1
    execute if entity @s[scores={SG.Combo=2}] run function asset:artifact/1024.brave_rod/click/combo/beam3

# コンボカウント
    scoreboard players set @s[scores={SG.Combo=0..1}] SG.Wait 15
    scoreboard players set @s[scores={SG.Combo=2}] SG.Wait 20
    scoreboard players add @s SG.Combo 1
    scoreboard players set @s[scores={SG.Combo=3..}] SG.Combo 0

# スケジュール開始
    schedule function asset:artifact/1024.brave_rod/click/combo/tick 1t replace
