#> asset:object/1040.thelema_persuit_sword/tick/hit
#
#
#
# @within function
#   asset:object/1040.thelema_persuit_sword/tick/
#   asset:object/1040.thelema_persuit_sword/tick/recursive

#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $320

# 演出
    execute positioned ~ ~0.3 ~ run function asset:object/1040.thelema_persuit_sword/tick/vfx
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 0.7 0
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 1 0
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 1.3 0

# 320を定義
    scoreboard players set $320 Temporary 320

# ダメージ 最大体力の160%分(最大320)
# api:damage/にif dataをつけているのはデバッグ中に引数Damageが足りませんと出たため
    execute store result score $Damage Temporary run data get storage asset:context this.MaxHP 1.6
    execute store result storage api: Argument.Damage int 1 run scoreboard players operation $Damage Temporary < $320 Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute at @a if score @s 1040.UserID = @p UserID as @p run function api:damage/modifier
    execute if data storage api: Argument.Damage positioned ~-1 ~ ~-1 as @e[type=#lib:living,tag=Enemy,dx=1,dy=2,dz=1,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $320 Temporary
    scoreboard players reset $Damage Temporary

# 消滅
    kill @s
