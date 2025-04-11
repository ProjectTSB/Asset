#> asset:mob/0301.karmic/tick/common/thunder
#
#
#
# @within function asset:mob/0301.karmic/tick/**

# 演出
    particle dust 1 1 1 1 ~ ~3 ~ 0.3 3 0.3 0 50
    particle dust 0 0 0 1 ~ ~5 ~ 0.7 5 0.7 1 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 8
    particle minecraft:large_smoke ~ ~ ~ 0.3 0 0.3 0.4 50

    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.4 2
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.4 0

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 28f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/0301.karmic/tick/common/effect
# リセット
    function api:damage/reset
