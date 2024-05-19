#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/hit
#
# 追撃の剣のヒット処理
#
# @within function
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/recursive
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/main

#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $320

# 演出
    execute positioned ~ ~0.3 ~ run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/vfx
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 0.7 0
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 1 0
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 1.3 0

# 320を定義
    scoreboard players set $320 Temporary 320

# ダメージ 最大体力の160%分(最大320)
# api:damage/にif dataをつけているのはデバッグ中に引数Damageが足りませんと出たため
    execute at @a if score @s SP.UserID = @p UserID store result score $Damage Temporary run attribute @p generic.max_health get 1.6
    scoreboard players operation $Damage Temporary < $320 Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute at @a if score @s SP.UserID = @p UserID as @p run function api:damage/modifier
    execute if data storage api: Argument.Damage positioned ~-1 ~ ~-1 as @e[type=#lib:living,tag=Enemy,dx=1,dy=2,dz=1,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
