#> asset:artifact/1079.allochromatic/click/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1079.allochromatic/click/2.check_condition

# 前処理
    # 定数設定 (TZ.Const)
        function asset:artifact/1079.allochromatic/click/set_const
    # 共鳴・紅 (TZ.Resonance.Level)
        execute as @a[distance=..20,sort=nearest] run function asset:artifact/1079.allochromatic/click/get_resonance_level
    # 共鳴攻撃クールダウン (TZ.Resonance.AttackCooldown)
        execute if function asset:artifact/1079.allochromatic/predicate/has_resonance_other run function asset:artifact/1079.allochromatic/click/get_resonance_cooldown
    # スニーク (TZ.Sneak)
        execute if predicate lib:is_sneaking run data modify storage asset:temp TZ.Sneak set value 1b
# 本処理
    # 使用
        function asset:artifact/common/use/mainhand
    # 射撃
        function asset:artifact/1079.allochromatic/click/shot/
# 後処理
    # 共鳴・蒼を付与
        function asset:artifact/1079.allochromatic/click/give_effect
    # リロード確認
        function asset:artifact/1079.allochromatic/click/reload.m with storage asset:temp TZ
    # リセット
        data remove storage asset:temp TZ
