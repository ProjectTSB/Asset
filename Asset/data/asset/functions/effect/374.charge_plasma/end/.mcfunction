#> asset:effect/374.charge_plasma/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/374.charge_plasma/_/end

# スタック数に応じてそれぞれの攻撃用Objectを召喚
    execute if data storage asset:context {Stack:1} run say MP heal attack
    execute if data storage asset:context {Stack:2} run say broad attack
    execute if data storage asset:context {Stack:3} run say laser attack
