#> asset:object/2013.sonic_boom_slash/tick/damage
#
# ダメージ処理
#
# @within function asset:object/2013.sonic_boom_slash/tick/

#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：難易度数値 × 補正値 + 基礎
# Nは難易度値を示します
    execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 15
    scoreboard players add $DamageTemp Temporary 10

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sが飛ばした斬撃によって真っ二つに切り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
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
    scoreboard players reset $DamageTemp Temporary
    data remove storage asset:temp 2013
    function api:damage/reset
