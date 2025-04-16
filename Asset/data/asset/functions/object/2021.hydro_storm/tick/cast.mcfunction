#> asset:object/2021.hydro_storm/tick/cast
#
# ダメージ処理
#
# @within function asset:object/2021.hydro_storm/tick/

#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：7N + 43
# Nは難易度値を示します
    execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 12
    scoreboard players add $DamageTemp Temporary 35

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
    # 難易度補正削除
        data modify storage api: Argument.BypassDifficulty set value true
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sが巻き起こしたハイドロストームに溺れてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
# ダメージを与える
    execute positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] at @s run function api:damage/
# リセット
    function api:damage/reset

# リセット
    scoreboard players reset $DamageTemp Temporary
