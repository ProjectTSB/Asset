#> asset:effect/0608.sinking/tick/debuff.m
#
# Effectのレベルだけデバフを付与
#
# @input args
#   Lv: int
# @within function asset:effect/0608.sinking/tick/

# Lvの値だけ採掘速度低下を付与
    $effect give @s mining_fatigue 1 $(Lv) true
