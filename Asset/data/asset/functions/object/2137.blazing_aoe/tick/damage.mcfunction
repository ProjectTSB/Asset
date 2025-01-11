#> asset:object/2137.blazing_aoe/tick/damage
#
#
#
# @within function asset:object/2137.blazing_aoe/tick/aoe

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 10.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # 属性耐性・防御力/防具強度・耐性エフェクトを無視するか否か
        data modify storage api: Argument.BypassResist set value false
# ダメージ補正
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える。
    function api:damage/
# リセット
    function api:damage/reset
