#> asset:object/1153.flare_butterfly/tick/attack/cooldown/reset
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/attack/attack

# 初期化
    data modify storage asset:context this.AttackCD._ set from storage asset:context this.AttackCD.Max
