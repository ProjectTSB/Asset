#> asset:artifact/0615.censored/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/615/attack_melee/

#> Private
# @private
    #declare score_holder $Random

# 確率で処刑する
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $5 Const
    # 処刑
        execute if score $Random Temporary matches 0 at @e[type=#lib:living,type=!player,tag=Victim,tag=!Enemy.Boss,tag=!Uninterferable] run function asset:artifact/0615.censored/attack_melee/3.4.execution
    # ボス級の処刑
        execute if score $Random Temporary matches 0 at @e[type=#lib:living,type=!player,tag=Victim,tag=Enemy.Boss,tag=!Uninterferable] run function asset:artifact/0615.censored/attack_melee/3.5.execution_boss
    # 通常攻撃
        execute if score $Random Temporary matches 1..4 at @e[type=#lib:living,type=!player,tag=Victim] run function asset:artifact/0615.censored/attack_melee/3.6.attack
    # リセット
        scoreboard players reset $Random Temporary
