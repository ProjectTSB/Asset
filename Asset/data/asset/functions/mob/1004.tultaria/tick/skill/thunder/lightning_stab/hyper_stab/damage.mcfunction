#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/damage
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/recursive

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ補正
        function lib:damage/modifier
    # ダメージ与える
        function lib:damage/
# リセット
    function lib:damage/reset
