#> asset:artifact/0218.iron_storm/trigger/3.3.blast
#
# ダメージ、音、パーティクルを出したあと処理対象タグを剥がす
#
# @within function asset:artifact/0218.iron_storm/trigger/3.2.check_entity

#> private
#
# @private
    #declare score_holder $DamageCoefficient
    #declare score_holder $DA.OwnerID
    #declare tag DA.Owner

# 実行者取得
    scoreboard players operation $DA.OwnerID Temporary = @s DA.OwnerID
    execute as @a if score @s UserID = $DA.OwnerID Temporary run tag @s add DA.Owner

# ダメージ係数計算(最大ダメージの30%~100%),計算結果: 係数[%]
    execute store result score $DamageCoefficient Temporary run random value 0..69
    scoreboard players add $DamageCoefficient Temporary 30

# 敵へのダメージ(最大500)
    execute store result storage api: Argument.Damage float 5 run scoreboard players get $DamageCoefficient Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    execute as @p[tag=DA.Owner] run function api:damage/modifier
    execute as @e[type=#lib:living,tag=!Friend,distance=..5] run function api:damage/
    function api:damage/reset

# 味方へのダメージ(最大100)
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $DamageCoefficient Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは鉄の雨に巻き込まれた","with":[{"selector":"@s"}]}]']
    execute as @p[tag=DA.Owner] run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Friend,distance=..5] run function api:damage/
    function api:damage/reset

# 音
    playsound entity.generic.explode player @a[distance=..100] ~ ~ ~ 1 1 1

# パーティクル
    particle explosion ~ ~1 ~ 1.5 1 1.5 0 15 force

# 空中判定タグ削除
    tag @s remove DA.InAir

# reset
    scoreboard players reset $DA.OwnerID Temporary
    scoreboard players reset $DamageCoefficient Temporary
    tag @a[tag=DA.Owner] remove DA.Owner
