#> asset:artifact/0441.awaited_opportunity/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/441/attack_melee/


# エフェクト付与
    effect give @s speed 10 2 true

# 30%の確率でメッセージを流す
    execute if predicate lib:random_pass_per/30 run function asset:artifact/0441.awaited_opportunity/attack_melee/3.1.message

# 攻撃対象にダメージ
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] at @s run function asset:artifact/0441.awaited_opportunity/attack_melee/3.3.attack