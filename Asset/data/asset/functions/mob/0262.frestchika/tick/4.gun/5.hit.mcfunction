#> asset:mob/0262.frestchika/tick/4.gun/5.hit
#
#
#
# @within function asset:mob/0262.frestchika/tick/4.gun/4.shot

# ダメージ設定
    # 与えるダメージ
        data modify storage .Damage set value 15f
    # 第一属性
        data modify storage .AttackType set value "Magic"
    # 第二属性
        data modify storage .ElementType set value "Thunder"
    # ダメージ
        function modifier
        execute as @p[tag=LandingTarget,tag=!PlayerShouldInvulnerable,distance=..20,limit=1] run function
# リセット
    function reset

# 着弾タグを消す
    tag @p[tag=LandingTarget,distance=..50,limit=1] remove LandingTarget
