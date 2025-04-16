#> asset:object/2018.ecual_water_bullet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2018/hit_entity

#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：5N + 25
# Nは難易度値を示します
    # execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 5
    scoreboard players add $DamageTemp Temporary 20

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sの身体は%2$sの弾幕に貫かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
    # ダメージを与える
        execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
# リセット
    function api:damage/reset

# リセット
    scoreboard players reset $DamageTemp Temporary

# 消失
    function asset:object/call.m {method:kill}
