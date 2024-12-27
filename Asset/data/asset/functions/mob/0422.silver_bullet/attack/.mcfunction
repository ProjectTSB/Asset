#> asset:mob/0422.silver_bullet/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/422/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.65

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 20.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに群がれて倒れてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @p[tag=Victim] at @s run function lib:damage/
# リセット
    function lib:damage/reset
