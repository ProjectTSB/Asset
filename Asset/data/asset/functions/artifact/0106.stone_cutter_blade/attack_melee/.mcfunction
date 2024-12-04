#> asset:artifact/0106.stone_cutter_blade/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/106/attack_melee/

# 攻撃先のエンティティで実行
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..15] at @s run function asset:artifact/0106.stone_cutter_blade/attack_melee/3.1.entity.main
