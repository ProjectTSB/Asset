#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/test
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/

# パンチのダメージ判定
    # ダメージ設定
        data modify storage api: Argument.Damage set value 10f
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
    # 補正実行
        function api:damage/modifier
    # ダメージを与える
        function api:damage/
    # リセット
        function api:damage/reset
