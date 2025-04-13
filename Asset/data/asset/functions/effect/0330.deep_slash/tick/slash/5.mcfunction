#> asset:effect/0330.deep_slash/tick/slash/5
#
#
#
# @within function asset:effect/0330.deep_slash/tick/

# 演出
    playsound item.trident.throw player @a[distance=..12] ~ ~ ~ 0.4 0.675
    playsound block.bubble_column.whirlpool_inside player @a[distance=..12] ~ ~ ~ 0.7 0.85
    playsound block.bubble_column.whirlpool_inside player @a[distance=..12] ~ ~ ~ 0.7 0.90
    playsound block.bubble_column.whirlpool_inside player @a[distance=..12] ~ ~ ~ 0.7 0.95

# ダメージだけ設定しておいて攻撃判定は別関数に任せる
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Slash5
    function asset:effect/0330.deep_slash/tick/slash/damage/5

# 演出用Object召喚
    data modify storage api: Argument.ID set value 1133
    data modify storage api: Argument.FieldOverride.Count set value 5
    execute anchored eyes positioned ^ ^-0.2 ^1.5 run function api:object/summon
