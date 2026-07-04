#> asset:effect/374.charge_plasma/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/374.charge_plasma/_/end

# スタック数に応じてそれぞれの攻撃処理を実行
    execute if data storage asset:context {Stack:1} run function asset:effect/374.charge_plasma/end/attack/1/
    execute if data storage asset:context {Stack:2} anchored eyes positioned ^ ^-0.25 ^ run function asset:effect/374.charge_plasma/end/attack/2
    execute if data storage asset:context {Stack:3} run function asset:effect/374.charge_plasma/end/attack/3/
