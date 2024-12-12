#> asset:mob/0376.convict_v2/tick/common/slash1
#
#
#
# @within function asset:mob/0376.convict_v2/tick/**/**


# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 2

# ダメージ設定
    data modify storage api: Argument.Damage set value 20.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function api:damage/
# エフェクト
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:mob/0376.convict_v2/tick/common/effect
# リセット
    function api:damage/reset
