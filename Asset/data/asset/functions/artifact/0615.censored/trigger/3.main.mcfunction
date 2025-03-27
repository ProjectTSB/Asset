#> asset:artifact/0615.censored/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0615.censored/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 確率で処刑する
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..4
    # 処刑
        execute if score $Random Temporary matches 0 at @e[type=#lib:living,type=!player,tag=Victim,tag=!Enemy.Boss,tag=!Uninterferable] run function asset:artifact/0615.censored/trigger/execution/mob
    # ボス級の処刑
        execute if score $Random Temporary matches 0 at @e[type=#lib:living,type=!player,tag=Victim,tag=Enemy.Boss,tag=!Uninterferable] run function asset:artifact/0615.censored/trigger/execution/boss
    # 通常攻撃
        execute if score $Random Temporary matches 1..4 at @e[type=#lib:living,type=!player,tag=Victim] run function asset:artifact/0615.censored/trigger/attack
    # リセット
        scoreboard players reset $Random Temporary
