#> asset:object/2036.pumpkin_rain/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2036/kill

# 演出
    particle explosion ~ ~1 ~ 0 0 0 0 1 normal @a
    particle cloud ~ ~1 ~ 0 0 0 0.3 25 normal @a
    particle flame ~ ~1 ~ 0 0 0 0.2 25 normal @a
    particle dust 1 0.6 0 2 ~ ~ ~ 1.2 1.2 1.2 0 25 normal @a
    particle dust 0.851 0 1 2 ~ ~ ~ 1.2 1.2 1.2 0 25 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.4 1.3 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.4 1.6 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.4 1.9 0
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.7 1.7 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[gamemode=!creative,tag=DXYZ,distance=..4] run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=DXYZ,distance=..4] remove DXYZ

# 消滅
    kill @s
