#> asset:object/1102.turret/tick/shot/deal_damage
#
#
#
# @within function asset:object/1102.turret/tick/shot/bullet_rec

#> Private
# @private
#declare score_holder $UserID

# UserID 取得
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    function api:damage/

# リセット
    function api:damage/reset
    scoreboard players reset $UserID Temporary
