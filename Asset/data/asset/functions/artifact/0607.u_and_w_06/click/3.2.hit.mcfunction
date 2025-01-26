#> asset:artifact/0607.u_and_w_06/click/3.2.hit
#
#
# @within function
#    asset:artifact/0607.u_and_w_06/click/
#    asset:artifact/0607.u_and_w_06/click/3.1.bullet

# 演出
    execute at @e[tag=LandingTarget,limit=1] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 4

# ダメージ設定
    # ダメージ
        data modify storage lib: Argument.Damage set value 55.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # ダメージ
        function lib:damage/modifier
        execute as @e[tag=LandingTarget] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget
