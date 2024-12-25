#> asset:object/2091.hyper_laser_manager/tick/shoot
#
#
#
# @within function asset:object/2091.hyper_laser_manager/tick/

# vfx
    function asset:object/2091.hyper_laser_manager/tick/vfx
    execute as @a[distance=..32] at @s facing entity @e[type=marker,tag=this,distance=..30] eyes positioned ^ ^ ^1 run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 1 1.8
    execute as @a[distance=..32] at @s facing entity @e[type=marker,tag=this,distance=..30] eyes positioned ^ ^ ^1 run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 1 1.6

# 発射
    function asset:object/2091.hyper_laser_manager/tick/recursive
    scoreboard players reset $Recursive Temporary

# 立方体範囲内のプレイヤーにtag付け
    data modify storage lib: args.dx set value 2.5
    data modify storage lib: args.dy set value 2.5
    data modify storage lib: args.dz set value 30.0
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..64]"
    execute positioned ^ ^ ^15 run function lib:rotatable_dxyz/m with storage lib: args

# ダメージを与える
    # データ設定
        data modify storage api: Argument.Damage set value 45.0f
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "Fire"
    # tag付けされたプレイヤーにダメージを与える
        function api:damage/modifier
        execute as @a[tag=DXYZ,distance=..64] run function api:damage/

# リセット
    function api:damage/reset

# tagリセット
    tag @a[tag=DXYZ,distance=..64] remove DXYZ
