#> asset:object/2031.giant_pumpkin/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2031/kill

# 演出
    particle explosion ~ ~1 ~ 0.3 0.3 0.3 0 5 normal @a
    particle cloud ~ ~1 ~ 0 0 0 0.3 50 normal @a
    particle flame ~ ~1 ~ 0 0 0 0.2 100 normal @a
    particle dust 1 0.6 0 3.5 ~ ~ ~ 1.2 1.2 1.2 0 50 normal @a
    particle dust 0.851 0 1 3.5 ~ ~ ~ 1.2 1.2 1.2 0 50 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1.3 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1.6 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1.9 0
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 1.7 0

# 回転するxyzLibを使ってダメージ判定を行う
    data modify storage lib: args.dx set value 1.8
    data modify storage lib: args.dy set value 1.8
    data modify storage lib: args.dz set value 1.8
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..5]"
    function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set value 15
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ,distance=..5] run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=DXYZ,distance=..5] remove DXYZ

# キル
    kill @s
