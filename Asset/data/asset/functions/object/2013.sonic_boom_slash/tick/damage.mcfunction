#> asset:object/2013.sonic_boom_slash/tick/damage
#
# ダメージ処理
#
# @within function asset:object/2013.sonic_boom_slash/tick/

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 36.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sが飛ばした斬撃によって真っ二つに切り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
    # 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual

# ヒットタグを付与
    tag @s add 2013.Temp.Target

# 自身のIDをストレージに入れる
    execute store result storage asset:temp 2013.Temp int 1 run scoreboard players get @s UserID

# IDチェック
    function asset:object/2013.sonic_boom_slash/tick/check.m with storage asset:temp 2013

# ダメージ処理
    execute if entity @s[tag=2013.Temp.Target] run function api:damage/

# ヒットタグ削除
    tag @s remove 2013.Temp.Target

# リセット
    data remove storage asset:temp 2013.Temp
    function api:damage/reset
