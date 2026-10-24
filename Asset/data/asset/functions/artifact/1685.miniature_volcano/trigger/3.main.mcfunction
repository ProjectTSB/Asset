#> asset:artifact/1685.miniature_volcano/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1685.miniature_volcano/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 発射用エフェクト
    # ダメージ
        data modify storage api: Argument.FieldOverride.Damage set value 20d
    # 発射数 = (int)(Duration + 1)/2
        data modify storage api: Argument.Duration set value 15
    # 付与
        data modify storage api: Argument.ID set value 432
        data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
        function api:entity/mob/effect/give
        function api:entity/mob/effect/reset
