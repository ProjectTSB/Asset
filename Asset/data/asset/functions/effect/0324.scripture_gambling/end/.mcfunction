#> asset:effect/0324.scripture_gambling/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0324.scripture_gambling/_/end

#> private
# @private
    #declare tag Success

# N%の確率で成功する
    execute if predicate lib:random_pass_per/30 run tag @s add Success

# 成功した場合
    execute if entity @s[tag=Success] run function asset:effect/0324.scripture_gambling/end/success

# 失敗した場合
    execute if entity @s[tag=!Success] run function asset:effect/0324.scripture_gambling/end/failure

# リセット
    tag @s remove Success
