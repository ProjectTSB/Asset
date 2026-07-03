#> asset:object/1171.torch_ballet/hit_entity/damage
#
#
#
# @within function asset:object/1171.torch_ballet/hit_entity/

#> Private
# @private
    #declare score_holder $UserID

# User特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute if data storage asset:context this.AdditionalMPHeal run data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary



# タグ付与
    tag @s add 1171.CannotHit
