#> asset:mob/0418.astro_zombie/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/418/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute as @p[tag=Victim] at @s run particle dust 0.975 0.2 0.2 1 ~ ~ ~ 0.5 1 0.5 0 30
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 1.4

# ダメージ
    # 引数の設定
    # 与えるダメージ（経過時間によって変化）
        execute if score @s General.Mob.Tick matches ..500 run data modify storage api: Argument.Damage set value 45.0f
        execute if score @s General.Mob.Tick matches 501..1000 run data modify storage api: Argument.Damage set value 50.0f
        execute if score @s General.Mob.Tick matches 1001.. run data modify storage api: Argument.Damage set value 55.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって殴り倒された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @p[tag=Victim] at @s run function api:damage/
# リセット
    function api:damage/reset
