#> asset:object/2054.lastboss_white_pillar/tick/damage
#
#
#
# @within function asset:object/2054.lastboss_white_pillar/tick/

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 20.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    function api:damage/

# リセット
    function api:damage/reset
