#> asset:object/1059.book_of_hero/tick/attack
#
#
#
# @within function asset:object/1059.book_of_hero/tick/

#> private
# @private
    #declare score_holder $Progress
    #declare score_holder $Damage
    #declare score_holder $Level

# 変数
    function api:global_vars/game_progress
    execute store result score $Progress Temporary run data get storage api: Return.Progress 100

# レベル計算（0-20）
    scoreboard players operation $Level Temporary = $Progress Temporary
    scoreboard players operation $Level Temporary /= $5 Const
    execute if score $Level Temporary matches 21.. run scoreboard players set $Level Temporary 20

# ダメージ計算 (20 * 1.2^(レベル-1))
    scoreboard players set $Damage Temporary 20
    execute if score $Level Temporary matches 1.. run function asset:object/1059.book_of_hero/tick/calc_damage

# ダメージを適用
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $Damage Temporary

# デバッグメッセージ
    # tellraw @a [{"text":"Progress: "},{"score":{"name":"$Progress","objective":"Temporary"}},{"text":" Level: "},{"score":{"name":"$Level","objective":"Temporary"}},{"text":" Damage: "},{"score":{"name":"$Damage","objective":"Temporary"}}]

# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
# ダメージ
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a if score $OwnerID Temporary = @p UserID as @p run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,distance=..6,sort=nearest,limit=1] run function api:damage/
# リセット
    scoreboard players reset $OwnerID Temporary
    function api:damage/reset




# リセット
    scoreboard players set @s 1059.ActionTime 0
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Level Temporary
    scoreboard players reset $Progress Temporary
