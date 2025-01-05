#> asset:mob/0181.magic_bookshelf/attack/random_element
#
# ランダムな属性で攻撃
#
# @within function asset:mob/0181.magic_bookshelf/attack/

#> Private
# @private
    #declare score_holder $Random

# 攻撃時に火、水、雷のどれかに分岐
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const
    execute if score $Random Temporary matches 0 run function asset:mob/0181.magic_bookshelf/attack/elements/fire
    execute if score $Random Temporary matches 1 run function asset:mob/0181.magic_bookshelf/attack/elements/water
    execute if score $Random Temporary matches 2 run function asset:mob/0181.magic_bookshelf/attack/elements/thunder
    scoreboard players reset $Random Temporary
