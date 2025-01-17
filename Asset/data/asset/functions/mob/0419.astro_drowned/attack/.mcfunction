#> asset:mob/0419.astro_drowned/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/419/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# テレポート
    tp @s @p[tag=Victim]

# テレポート演出（デーンw）
    execute as @p[tag=Victim] at @s run playsound entity.phantom.bite hostile @s ~ ~ ~ 1 0
    execute as @p[tag=Victim] at @s run playsound entity.elder_guardian.death hostile @s ~ ~ ~ 2 2
    execute as @p[tag=Victim] at @s run playsound item.trident.return hostile @s ~ ~ ~ 2 0.5
    execute as @p[tag=Victim] at @s run playsound entity.wither.spawn hostile @s ~ ~ ~ 1 1.5
    execute as @p[tag=Victim] at @s run particle dust 0.145 0.792 0.8 1 ~ ~ ~ 0.5 1 0.5 0 30

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 27.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって貫かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @p[tag=Victim] at @s run function api:damage/
# リセット
    function api:damage/reset
