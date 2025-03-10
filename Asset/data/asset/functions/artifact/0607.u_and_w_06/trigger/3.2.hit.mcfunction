#> asset:artifact/0607.u_and_w_06/trigger/3.2.hit
#
#
# @within function
#    asset:artifact/0607.u_and_w_06/trigger/3.main
#    asset:artifact/0607.u_and_w_06/trigger/3.1.bullet


# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[tag=LandingTarget,limit=1] run particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 4

# ダメージ設定
    # ダメージ
        data modify storage api: Argument.Damage set value 55.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # ダメージ
        function api:damage/modifier
        execute as @e[tag=LandingTarget] run function api:damage/
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget
