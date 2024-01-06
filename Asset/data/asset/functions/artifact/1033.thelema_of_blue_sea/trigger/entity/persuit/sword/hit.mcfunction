#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/hit
#
# 追撃の剣のヒット処理
#
# @within function
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/recursive
#   asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/main

# 演出
    execute positioned ~ ~0.3 ~ run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/sword/vfx
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 0.7 0
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 1 0
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 1.3 0

# ダメージ 最大体力の200%分
# lib:damage/にif dataをつけているのはデバッグ中に引数Damageが足りませんと出たため
    execute at @a if score @s SP.UserID = @p UserID store result storage lib: Argument.Damage double 1.0 run attribute @p generic.max_health get 2.0

    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    execute at @a if score @s SP.UserID = @p UserID as @p run function lib:damage/modifier
    execute if data storage lib: Argument.Damage as @e[type=#lib:living,tag=Enemy,distance=..2] run function lib:damage/
    function lib:damage/reset

# 消滅
    kill @s