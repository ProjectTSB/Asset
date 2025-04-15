#> asset:object/1098.alchemy_laser/tick/shot
#
# 発動
#
# @within function asset:object/1098.alchemy_laser/tick/

#> Private
# @private
    #declare score_holder $UserID

# 演出
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2
    particle flash ~ ~ ~ 0 0 0 0 1

# 演出
    data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,20f]}}

# ダメージ適用
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..1.5] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
