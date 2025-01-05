#> asset:object/2070.potion/tick/poison/effect.m
#
# 毒を付与
#
# @input args:
#   Duration : int
#   Amplifier : int
# @within function asset:object/2070.potion/tick/poison/tick

# 付与
    $effect give @a[tag=!PlayerShouldInvulnerable,distance=..3] poison $(Duration) $(Amplifier) false
