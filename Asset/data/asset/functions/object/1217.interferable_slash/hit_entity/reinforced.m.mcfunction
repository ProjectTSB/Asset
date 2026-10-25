#> asset:object/1217.interferable_slash/hit_entity/reinforced.m
#
#
#
# @within function asset:object/1217.interferable_slash/hit_entity/

# 威力をDamageMultiplier倍に
    $execute store result storage asset:context this.Damage double $(DamageMultiplier) run data get storage asset:context this.Damage

# MPを消費しきっていたなら追撃
    $execute if entity @s[tag=1217.SummonsAdditional] as @p[scores={UserID=$(UserID)}] at @s anchored eyes positioned ^ ^-0.4 ^ run function asset:object/1217.interferable_slash/hit_entity/additional
