#> asset:mob/0202.hunters_dream/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/202/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 腕振る
    item replace entity @s weapon.mainhand with iron_sword{AttributeModifiers:[{}]}
# 演出
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^2 0 0 0 1 2 normal
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# ダメージを与える
# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 8
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=Victim] run function api:damage/
# リセット
    function api:damage/reset
