#> asset:object/1101.tnt/tick/damage/deal_damage.m
#
# @input args:
#   DamagePer : float
#   Distance : String
# @within function asset:object/1101.tnt/tick/damage/

# ダメージ
    $execute store result storage api: Argument.Damage float $(DamagePer) run data get storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    $execute as @e[type=#lib:living_without_player,tag=1101.Hit,tag=!AlreadyHit,distance=$(Distance)] run function api:damage/
    function api:damage/reset

# 重複ヒット防止Tag
    $tag @e[type=#lib:living_without_player,tag=1101.Hit,distance=$(Distance)] add 1101.AldreadyHit
