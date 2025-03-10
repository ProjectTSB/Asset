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
        data modify storage api: Argument.Damage set value 4.5f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
    # 補正functionを実行
        function api:damage/modifier
    # 攻撃対象に
        execute as @p[tag=Victim] run function api:damage/
    # リセット
        function api:damage/reset
