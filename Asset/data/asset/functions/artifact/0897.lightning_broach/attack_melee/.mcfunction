#> asset:artifact/0897.lightning_broach/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/897/attack_melee/


# 個数を取得
    execute store result score $Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:897}}}]
    scoreboard players operation $Count Temporary < $3 Const
# ダメージ係数の設定
    scoreboard players set $Multi.Normal Temporary 100
    scoreboard players operation $Multi.Normal Temporary *= $Count Temporary
    scoreboard players add $Multi.Normal Temporary 200
    scoreboard players set $Multi.Angel Temporary 5
    scoreboard players operation $Multi.Angel Temporary *= $Count Temporary
    scoreboard players add $Multi.Angel Temporary 10
# 各自ダメージ
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10,sort=random,limit=3] run function asset:artifact/0897.lightning_broach/attack_melee/damage

# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $Multi.Normal Temporary
    scoreboard players reset $Multi.Angel Temporary
