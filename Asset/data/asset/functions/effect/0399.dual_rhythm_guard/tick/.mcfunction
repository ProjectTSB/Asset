#> asset:effect/0399.dual_rhythm_guard/tick/
#
# @within function asset:effect/0399.dual_rhythm_guard/_/tick

# スペクテイター中は接触判定を行わない。
    execute if entity @s[gamemode=spectator] run return 0

# 接触した相手に効果を移譲する。
    function asset:effect/0399.dual_rhythm_guard/tick/contact
