#> asset:artifact/1028.executioner_axe/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1028/attack_melee/


#殴った対象が後ろを向いているかどうかを見る
    execute at @e[type=#lib:living,tag=Victim,distance=..5] rotated ~ 0 positioned ^ ^ ^50 if entity @s[distance=..50] at @s run function asset:artifact/1028.executioner_axe/attack_melee/4.damage
    execute at @e[type=#lib:living,tag=Victim,distance=..5] rotated ~ 0 positioned ^ ^ ^50 unless entity @s[distance=..50] at @s run function asset:artifact/1028.executioner_axe/attack_melee/5.damage2
