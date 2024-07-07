#> asset:mob/0190.thunder_mage/tick/3.attack
#
# 雷を落とす
#
# @within function asset:mob/0190.thunder_mage/tick/2.tick

#> Private
# @private
    #declare score_holder $Random
    #declare tag Random

# ID設定
    data modify storage api: Argument.ID set value 191

# ノーマル以下
# 周囲のランダムなプレイヤーの位置に召喚（範囲内にいないなら不発）
    execute if predicate api:global_vars/difficulty/max/normal at @r[gamemode=!spectator,distance=..15] run function api:mob/summon

# ハード以上
# 50%の確率で座標攻撃、50%で偏差攻撃
    tag @s add Random
    execute if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/50 run tag @s add Random
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[tag=!Random] at @r[gamemode=!spectator,distance=..15] run function api:mob/summon
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[tag=Random] if entity @p[distance=..15] run function asset:mob/0190.thunder_mage/tick/4.predict_attack

# 次に攻撃するタイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s 5A.Tick = $Random Temporary
    scoreboard players remove @s 5A.Tick 60

# リセット
    scoreboard players reset $Random Temporary
    tag @s[tag=Random] remove Random
