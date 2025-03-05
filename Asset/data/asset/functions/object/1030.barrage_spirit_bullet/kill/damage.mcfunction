#> asset:object/1030.barrage_spirit_bullet/kill/damage
#
#
#
# @within function asset:object/1030.barrage_spirit_bullet/kill/

#> private
# @private
    #declare score_holder $OwnerID

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 95..135
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"

# マスターとして補正functionを実行
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a if score $OwnerID Temporary = @p UserID as @p run function api:damage/modifier

# ダメージ実行
    execute as @e[tag=Enemy,tag=!Uninterferable,distance=..3,sort=nearest,limit=1] run function api:damage/

# リセット
    function api:damage/reset
    scoreboard players reset $OwnerID Temporary
