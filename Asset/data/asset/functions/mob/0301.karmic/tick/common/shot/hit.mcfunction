#> asset:mob/0301.karmic/tick/common/shot/hit
#
#
#
# @within function asset:mob/0301.karmic/tick/common/shot/loop

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 19f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @p[tag=LandingTarget,tag=!PlayerShouldInvulnerable,distance=..50,limit=1] run function api:damage/
        execute as @p[tag=LandingTarget,tag=!PlayerShouldInvulnerable,distance=..50,limit=1] run function asset:mob/0301.karmic/tick/common/effect
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @p[tag=LandingTarget,distance=..50,limit=1] remove LandingTarget
