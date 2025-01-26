#> asset:mob/0416.ahssat/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/416/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute as @p[tag=Victim] at @s run particle dust 0.975 0.2 0.2 1 ~ ~ ~ 0.5 1 0.5 0 30
    playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.65

# 何故かこうするとプレイヤーと同じ剣の降り方をする
    item replace entity @s weapon with stick{CustomModelData:292}

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって斬られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @p[tag=Victim] at @s run function lib:damage/
# リセット
    function lib:damage/reset
