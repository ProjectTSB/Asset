#> asset:object/1114.butterfly_attack/tick/5/damage/
#
#
#
# @within function asset:object/1114.butterfly_attack/tick/5/

#> Private
# @private
    #declare tag Owner
    #declare score_holder $UserID

# 演出
    playsound block.fire.ambient player @a ~ ~ ~ 0.3 1.3 0
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.4 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.4 1.2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 0.4 0.5
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 0.3 0.8
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 0.3 1.2

# OwnerへTagを付与
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner

# Ownerの視点先に敵がいないかチェック
    execute as @p[tag=Owner] at @s anchored eyes positioned ^ ^ ^ run function asset:object/1114.butterfly_attack/tick/5/damage/find_target_line

# 1114.Targetがいなければ、前方かつ最も近い敵を狙う
    execute at @p[tag=Owner] unless entity @e[type=#lib:living,type=!player,tag=1114.Target,distance=..10] positioned ^ ^ ^3 run tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..3] add 1114.Target

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute as @p[tag=Owner] run function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=1114.Target,distance=..10,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    tag @p[tag=Owner] remove Owner
    tag @e[type=#lib:living,type=!player,tag=1114.Target,distance=..10] remove 1114.Target
    scoreboard players reset $UserID Temporary
    scoreboard players reset $RecursiveCount Temporary
