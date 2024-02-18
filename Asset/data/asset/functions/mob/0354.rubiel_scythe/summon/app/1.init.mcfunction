#> asset:mob/0354.rubiel_scythe/summon/app/1.init
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within function asset:mob/0354.rubiel_scythe/summon/2.summon

# 向きを更新
    tp @s ~ ~ ~ ~ ~

# ダメージインターバル設定
    scoreboard players set @s 9U.DamageInterval 0
