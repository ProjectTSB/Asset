#> asset:mob/0190.thunder_mage/tick/3.attack
#
# 雷を落とす
#
# @within function asset:mob/0190.thunder_mage/tick/2.tick

#> Private
# @private
    #declare score_holder $Random

# 周囲のランダムなプレイヤーの位置に召喚（範囲内にいないなら不発）
    data modify storage api: Argument.ID set value 191
    execute at @r[gamemode=!spectator,distance=..15] run function api:mob/summon


# 次に攻撃するタイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s 5A.Tick = $Random Temporary
    scoreboard players remove @s 5A.Tick 60

# リセット
    scoreboard players reset $Random Temporary
