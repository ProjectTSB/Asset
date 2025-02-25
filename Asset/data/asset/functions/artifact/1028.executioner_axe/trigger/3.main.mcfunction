#> asset:artifact/1028.executioner_axe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1028.executioner_axe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#殴った対象が後ろを向いているかどうかを見る
    execute at @e[type=#lib:living,tag=Victim,distance=..5] rotated ~ 0 positioned ^ ^ ^50 if entity @s[distance=..50] at @s run function asset:artifact/1028.executioner_axe/trigger/4.damage
    execute at @e[type=#lib:living,tag=Victim,distance=..5] rotated ~ 0 positioned ^ ^ ^50 unless entity @s[distance=..50] at @s run function asset:artifact/1028.executioner_axe/trigger/5.damage2
