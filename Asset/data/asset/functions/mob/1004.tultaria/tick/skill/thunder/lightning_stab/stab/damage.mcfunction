#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/stab/damage
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/tick

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 50.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 雷属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ補正
        function api:damage/modifier
    # ダメージ与える
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
# リセット
    function api:damage/reset
