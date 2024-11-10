#> asset:mob/0063.ghost/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/63/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute at @a[tag=Victim] run particle squid_ink ~ ~ ~ 0.3 0.3 0.3 0.4 100
    execute at @a[tag=Victim] run playsound entity.squid.death hostile @a ~ ~ ~

# 効果
    effect give @a[tag=Victim] blindness 1 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 4.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset