#> asset:object/1059.book_of_hero/tick/calc_damage
#
#
#
# @within function
#   asset:object/1059.book_of_hero/tick/attack
#   asset:object/1059.book_of_hero/tick/calc_damage

#> private
# @private
    #declare score_holder $Damage
    #declare score_holder $Level

# ダメージ計算 (20 * 1.2^(レベル-1)) 再起するらしい
scoreboard players operation $Damage Temporary *= $12 Const
scoreboard players operation $Damage Temporary /= $10 Const
scoreboard players remove $Level Temporary 1
execute if score $Level Temporary matches 1.. run function asset:object/1059.book_of_hero/tick/calc_damage
