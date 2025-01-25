#> asset:artifact/1174.sanguis/trigger/combo/damage
#
#
#
# @within function asset:artifact/1174.sanguis/trigger/combo/**

# 引数の設定
    # ダメージ値設定
        execute store result storage api: Argument.Damage float 1 run random value 80..110
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    execute as @p[tag=this] run function api:damage/modifier
# ダメージ実行
    function api:damage/
    function api:damage/reset
