#> asset:effect/0327.honey_poison/init/
#
# givenとre-givenで共通の初期化
#
# @within function
#   asset:effect/0327.honey_poison/given/
#   asset:effect/0327.honey_poison/re-given/

# Tickを初期化しておく
    data modify storage asset:context this.Tick set from storage asset:context this.DamageInterval
