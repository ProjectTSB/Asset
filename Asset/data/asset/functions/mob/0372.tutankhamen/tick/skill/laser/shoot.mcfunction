#> asset:mob/0372.tutankhamen/tick/skill/laser/shoot
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/laser/

# 再帰発射
    function asset:mob/0372.tutankhamen/tick/skill/laser/recursive
    scoreboard players reset $Recursive Temporary

# 演出
    execute as @a[distance=..30] at @s facing entity @e[type=wither_skeleton,tag=this,distance=..30,limit=1] eyes positioned ^ ^ ^1 run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 1 2
    function asset:mob/0372.tutankhamen/tick/skill/laser/vfx

# 回転するxyzLibを使ってヒット判定を行う
# x,yは半径0.75に+0.3して判定する
    data modify storage lib: args.dx set value 1.05
    data modify storage lib: args.dy set value 1.05
    data modify storage lib: args.dz set value 15.3
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..40]"
    execute at @s positioned ^ ^ ^16 run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set value 45.0d
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=DXYZ,distance=..40] run function api:damage/
    function api:damage/reset

# DXYZタグを削除
    tag @a[tag=DXYZ] remove DXYZ
