#> asset:effect/0608.sinking/tick/debuff.m
#
# Effectのレベルだけデバフを付与
#
# @within function asset:effect/0608.sinking/tick/

# Lvの値だけ採掘速度低下と鈍足を付与
$effect give @s mining_fatigue 1 $(Lv) true
$effect give @s slowness 1 $(Lv) true