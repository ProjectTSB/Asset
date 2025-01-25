#> asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/damage/slash_2
#
# 斬撃ダメージ判定2
#
# @within function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/

#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：12N + 28
# Nは難易度値を示します
    execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 12
    scoreboard players add $DamageTemp Temporary 28

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって無惨に切り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function api:damage/
# リセット
    function api:damage/reset

# リセット
    scoreboard players reset $DamageTemp Temporary
