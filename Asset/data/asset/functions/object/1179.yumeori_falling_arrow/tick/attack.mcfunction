#> asset:object/1179.yumeori_falling_arrow/tick/attack
#
#
#
# @within function asset:object/1179.yumeori_falling_arrow/tick/align_to_ground

#> Private
# @private
    #declare score_holder $UserID

# 演出
    playsound entity.arrow.hit neutral @a ~ ~ ~ 1 1
    playsound item.trident.hit_ground neutral @a ~ ~ ~ 1 1
    playsound entity.evoker.prepare_summon neutral @a ~ ~ ~ 0.8 2
    execute rotated ~ -90 run function asset:object/1179.yumeori_falling_arrow/tick/vfx

# どうせなら縦に広い判定をとっておく

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-1 ~-0.5 ~-1 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=2,dy=5,dz=2,sort=random,limit=1] run function api:damage/
    function api:damage/reset

#
    scoreboard players reset $UserID Temporary

#
    kill @s
