#> asset:object/1188.banishing_ring/tick/damage
#
#
#
# @within function asset:object/1188.banishing_ring/tick/

#> Private
# @private
    #declare score_holder $UserID

# 半径4ブロックに攻撃
    #攻撃情報はFieldから
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context this.ElementType
    #召喚したプレイヤー取得
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy.Boss,distance=..2] run function api:damage/
    function api:damage/reset

# リセット
    data modify storage asset:context this.Interval set value 20
    scoreboard players reset $UserID Temporary
