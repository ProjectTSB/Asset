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

# 演出
    execute at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] run function asset:object/1059.book_of_hero/tick/vfx

# 変数
    function api:global_vars/game_progress
    execute store result score $Progress Temporary run data get storage api: Return.Progress 100

# レベル計算（0-20）
    scoreboard players operation $Level Temporary = $Progress Temporary
    scoreboard players operation $Level Temporary /= $5 Const
    execute if score $Level Temporary matches 21.. run scoreboard players set $Level Temporary 20

# ダメージ計算 (20 * 1.2^(レベル-1))
    scoreboard players set $Damage Temporary 30
    execute if score $Level Temporary matches 1.. run function asset:object/1059.book_of_hero/tick/calc_damage

# ダメージを適用
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $Damage Temporary

# デバッグメッセージ
    # tellraw @a [{"text":"Progress: "},{"score":{"name":"$Progress","objective":"Temporary"}},{"text":" Level: "},{"score":{"name":"$Level","objective":"Temporary"}},{"text":" Damage: "},{"score":{"name":"$Damage","objective":"Temporary"}}]

# 属性
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
# ダメージ
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @p[tag=1059.OwnerPlayer] run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] run function api:damage/

# リセット
    function api:damage/reset
    scoreboard players set @s 1059.ActionTime 0
    scoreboard players reset $Damage Temporary
    scoreboard players reset $Level Temporary
    scoreboard players reset $Progress Temporary
