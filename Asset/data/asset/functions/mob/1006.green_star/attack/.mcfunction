#> asset:mob/1006.green_star/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/1006/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 効果
    effect give @a[tag=Victim,distance=..30] poison 10 2

# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 15.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=Victim,distance=..30] run function lib:damage/
# リセット
    function lib:damage/reset
