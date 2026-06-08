#> asset:object/1010.fire_magic/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1010/kill

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle lava ~ ~1 ~ 0.1 1 0.1 0 20 force
    particle flame ~ ~ ~ 0.2 0.2 0.2 0.3 20 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.generic.explode neutral @a ~ ~ ~ 1 1
    playsound entity.generic.explode neutral @a ~ ~ ~ 1 0
    playsound entity.blaze.burn neutral @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-1 ~-0.5 ~-1 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=1,dy=2.5,dz=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    kill @s
