#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/chain_lightning/weak/damage
#
# チェインライトニング部分のダメージ
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/chain_lightning/weak/thunder.recusrive

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 10.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ補正
        function api:damage/modifier
    # ダメージ与える
        function api:damage/
# リセット
    function api:damage/reset
