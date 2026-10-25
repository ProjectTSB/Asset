#> asset:effect/0324.scripture_gambling/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0324.scripture_gambling/_/end

# 成功した場合
    execute if data storage asset:context this{Success:true} run function asset:effect/0324.scripture_gambling/end/success

# 失敗した場合
    execute unless data storage asset:context this{Success:true} run function asset:effect/0324.scripture_gambling/end/failure
