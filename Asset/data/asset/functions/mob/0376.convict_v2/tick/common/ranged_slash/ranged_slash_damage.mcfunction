#> asset:mob/0376.convict_v2/tick/common/ranged_slash/ranged_slash_damage
#
#
#
# @within function asset:mob/0376.convict_v2/tick/**/**


# ダメージ設定
    data modify storage api: Argument.Damage set value 20.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!AG.Hit,tag=!PlayerShouldInvulnerable,distance=..3] at @s run function api:damage/

# エフェクト
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:mob/0376.convict_v2/tick/common/effect

# リセット
    function api:damage/reset

# プレイヤーにタグをつける
    tag @a[distance=..3] add AG.Hit
