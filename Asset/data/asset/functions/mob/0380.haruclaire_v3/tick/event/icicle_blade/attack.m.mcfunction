#> asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/attack.m
#
# アイシクルブレード
#
# @within
#    function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/

# 演出
    playsound item.trident.throw hostile @a ~ ~ ~ 2 0.9
    playsound item.trident.throw hostile @a ~ ~ ~ 2 1.1
    playsound item.trident.return hostile @a ~ ~ ~ 2 1.4

# ヒット判定
    $tp @s ~ ~ ~ ~$(Rotate) 0
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 25
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute at @s positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Blade
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは かたいこおりに まっぷたつにされた","with":[{"selector":"@s"}]}]'
    execute store result storage api: Argument.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,tag=AK.EntityRoot,limit=1] MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset
    tag @a[tag=DXYZ] remove DXYZ

# 演出
    execute at @s positioned ^ ^ ^-25 run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/particle_slash

# 演出召喚
    data modify storage api: Argument.ID set value 2164
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ^ ^ ^ run function api:object/summon
    tp @s ~ ~ ~ ~ ~
