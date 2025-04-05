#> asset:object/2091.hyper_laser_manager/tick/shoot
#
#
#
# @within function asset:object/2091.hyper_laser_manager/tick/

# サウンドと図形での演出
    particle minecraft:dust 0 1 1 2 ~ ~ ~ 0.7 0.7 0.7 0 100
    function asset:object/2091.hyper_laser_manager/tick/vfx
    execute as @a[distance=..32] at @s facing entity @e[type=marker,tag=this,distance=..30] eyes positioned ^ ^ ^1 run playsound minecraft:entity.warden.sonic_boom hostile @s ~ ~ ~ 0.7 1.8
    execute as @a[distance=..32] at @s facing entity @e[type=marker,tag=this,distance=..30] eyes positioned ^ ^ ^1 run playsound ogg:block.respawn_anchor.deplete2 hostile @a ~ ~ ~ 0.7 1
    execute as @a[distance=..32] at @s facing entity @e[type=marker,tag=this,distance=..30] eyes positioned ^ ^ ^1 run playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 0.7 0.7

# 再帰パーティクル演出
    function asset:object/2091.hyper_laser_manager/tick/recursive
    scoreboard players reset $Recursive Temporary

# 立方体範囲内のプレイヤーにtag付け
    data modify storage lib: args.dx set value 2.5
    data modify storage lib: args.dy set value 2.5
    data modify storage lib: args.dz set value 15.0
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..64]"
    execute positioned ^ ^ ^15 run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ,distance=..64] run function api:damage/
    function api:damage/reset

# tagリセット
    tag @a[tag=DXYZ,distance=..64] remove DXYZ
