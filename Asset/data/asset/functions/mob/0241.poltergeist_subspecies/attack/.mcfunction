#> asset:mob/0241.poltergeist_subspecies/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/241/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 演出
    execute at @a[tag=Victim] run particle minecraft:dust 0.102 0.004 0.039 2 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
    execute at @a[tag=Victim] run playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~ ~ 1.0 0.3 0

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 11d
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# ダメージ対象
    execute as @a[tag=Victim] run function api:damage/
# リセット
    function api:damage/reset
