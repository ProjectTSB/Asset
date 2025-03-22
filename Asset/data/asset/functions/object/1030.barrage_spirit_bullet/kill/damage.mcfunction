#> asset:object/1030.barrage_spirit_bullet/kill/damage
#
#
#
# @within function asset:object/1030.barrage_spirit_bullet/kill/

#> private
# @private
    #declare score_holder $OwnerID

# ダメージ
    execute store result storage api: Argument.Damage float 1 run function asset:object/1030.barrage_spirit_bullet/kill/get_damage with storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $OwnerID Temporary run function api:damage/modifier
    execute as @e[tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $OwnerID Temporary
