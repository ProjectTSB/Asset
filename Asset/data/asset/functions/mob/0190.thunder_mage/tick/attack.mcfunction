#> asset:mob/0190.thunder_mage/tick/attack
#
# 雷を落とす
#
# @within function asset:mob/0190.thunder_mage/tick/

#> Private
# @private
    #declare tag Random

# ノーマル以下なら、周囲のランダムなプレイヤーの位置に召喚（範囲内にいないなら不発）
# ハード以上で50%の確率で偏差攻撃を行う
    execute if predicate api:global_vars/difficulty/min/3_blessless if predicate lib:random_pass_per/50 run tag @s add Random
    execute if entity @s[tag=!Random] at @r[distance=..15] run function asset:mob/0190.thunder_mage/tick/summon
    execute if entity @s[tag=Random] if entity @p[distance=..15] run function asset:mob/0190.thunder_mage/tick/predict_attack

# 次に攻撃するタイミングをランダムにする
    execute store result score @s General.Mob.Tick run random value -80..-50

# リセット
    tag @s[tag=Random] remove Random
