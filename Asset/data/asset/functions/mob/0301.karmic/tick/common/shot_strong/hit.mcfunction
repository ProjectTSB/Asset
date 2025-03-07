#> asset:mob/0301.karmic/tick/common/shot_strong/hit
#
#
#
# @within function asset:mob/0301.karmic/tick/common/shot_strong/loop

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 17f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @p[tag=LandingTarget,tag=!PlayerShouldInvulnerable,distance=..50,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @p[tag=LandingTarget,distance=..50,limit=1] remove LandingTarget
