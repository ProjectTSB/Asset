#> asset:mob/1007.red_star/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/1007/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# ダメージを与える
# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=Victim,distance=..30] run function lib:damage/
# リセット
    function lib:damage/reset
