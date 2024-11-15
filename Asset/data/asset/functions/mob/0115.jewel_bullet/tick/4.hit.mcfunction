#> asset:mob/0115.jewel_bullet/tick/4.hit
#
#
#
# @within function asset:mob/0115.jewel_bullet/tick/3.move_recursive

#> Private
# @private
    #declare score_holder $DamageValue

# 難易度値を取得し、ダメージを計算する
# $DamageValue = 5(N -1) ただしノーマル以下では3に固定する
    function api:global_vars/get_difficulty
    execute store result score $DamageValue Temporary run data get storage api: Return.Difficulty
    scoreboard players remove $DamageValue Temporary 1

# ダメージ
    execute store result storage lib: Argument.Damage double 5.0 run scoreboard players get $DamageValue Temporary
    execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 3.0
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.FixedDamage set value 1b
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの宝石の煌めきにやられた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの宝石の価値に敗北した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    function lib:damage/modifier
# 実行
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function lib:damage/
# リセット
    function lib:damage/reset

# スコアのリセット
    scoreboard players reset $DamageValue Temporary

# 消滅
    kill @s
