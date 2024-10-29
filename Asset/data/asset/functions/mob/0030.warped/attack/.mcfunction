#> asset:mob/0030.warped/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/30/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute at @p[tag=Victim] run particle minecraft:dragon_breath ~ ~ ~ 0.5 1 0.5 0.05 50 normal @a
    execute at @p[tag=Victim] run playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 1 0.5 0

# 属性ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 2.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
    # 補正functionを実行
        function lib:damage/modifier
    # 攻撃対象に
        execute as @p[tag=Victim] run function lib:damage/
    # リセット
        function lib:damage/reset
