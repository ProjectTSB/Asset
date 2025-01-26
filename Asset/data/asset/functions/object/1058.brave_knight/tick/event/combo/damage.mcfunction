#> asset:object/1058.brave_knight/tick/event/combo/damage
#
#
#
# @within function
#   asset:object/1058.brave_knight/tick/event/combo/0
#   asset:object/1058.brave_knight/tick/event/combo/1

#> Private
# @private
    #declare score_holder $RandomDamage

# ダメージ
    execute store result score $RandomDamage Temporary run function lib:random/
    scoreboard players operation $RandomDamage Temporary %= $51 Const
    scoreboard players add $RandomDamage Temporary 100
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute as @p[tag=1058.OwnerPlayer] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.3
    data modify storage lib: Argument.KnockbackResist set value true
    execute facing entity @e[type=armor_stand,tag=this,scores={ObjectID=1058},limit=1] feet rotated ~ ~25 run function lib:motion/

# リセット
    scoreboard players reset $RandomDamage Temporary
