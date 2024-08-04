#> asset:artifact/1065.magic_bullet/trigger/loop/bullet/damage/
#
# ダメージ処理
#
# @within function asset:artifact/1065.magic_bullet/trigger/loop/bullet/main

#> Private
# @private
    #declare tag Owner

# Nは使用回数とする

# 使用者を特定
    execute at @a if score @s TL.OwnerID = @p UserID run tag @p add Owner

# 非プレイヤーに対するダメージ
# ダメージ = 500 + 150 * N
# 7つ目の弾丸では火力が2000になる

# ダメージ計算
    scoreboard players operation $Damage Temporary = @s TL.UseCount
    scoreboard players operation $Damage Temporary *= $150 Const
    execute store result storage api: Argument.Damage int 1 run scoreboard players add $Damage Temporary 500
    execute if entity @s[scores={TL.UseCount=7}] run data modify storage api: Argument.Damage set value 2000

# その他ダメージ処理
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=Owner] run function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=TL.TargetEntity,distance=..4] run function api:damage/
    function api:damage/reset

# プレイヤーに対するダメージ
# ダメージ = 2.5(N + 9)
# 7つ目の弾丸では火力が50になる
# 7つ目の弾丸では使用者にも当たる

# ダメージ計算
    scoreboard players operation $Damage Temporary = @s TL.UseCount
    scoreboard players operation $Damage Temporary += $9 Const
    execute store result storage api: Argument.Damage double 0.5 run scoreboard players add $Damage Temporary 5
    execute if entity @s[scores={TL.UseCount=7}] run data modify storage api: Argument.Damage set value 50

# その他ダメージ処理
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに撃ち抜かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute as @p[tag=Owner] run function api:damage/modifier
    execute if entity @s[scores={TL.UseCount=..6}] as @a[tag=TL.TargetEntity,tag=!Owner,distance=..4] run function api:damage/
    function api:damage/reset

# 7つ目の弾丸かつ使用者に当たってるなら実行
    execute if entity @s[scores={TL.UseCount=7}] if entity @p[tag=Owner,tag=TL.TargetEntity] as @p[tag=Owner] run function asset:artifact/1065.magic_bullet/trigger/loop/bullet/damage/myself

# リセット
    scoreboard players reset $Damage Temporary
    tag @p[tag=Owner] remove Owner
    tag @e[type=#lib:living,tag=TL.TargetEntity] remove TL.TargetEntity
