#> asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/attack
#
# アイシクルブレード
#
# @within
#    function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/


# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 2.5
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 25
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set value 50.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,tag=AK.EntityRoot,limit=1] MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset
    tag @a[tag=DXYZ] remove DXYZ

# 演出
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYAHAAwCcARgIwUBmFAtHQGwDsALC90WRosyggIYsAxjUZxRI7pzKjRYXBlEBbBMkBbvgAI6qsDFEAnTQGck4CQHs8GCEjplcjU7Y3WwAN1Eo8bXAADyQKXCgwgF8o3Ahbbz8AoLBQxHCwSMQAVgoY3FtGRgs4J3TcGjgALzQ4UzDcNAsAIWra0wBRAEc8fxQoAGUTCTgSREZ-EpiAXSA_3
    # 線 1
    particle block ice ^0 ^ ^0 3 1 3 0.2 5
    particle block ice ^0 ^ ^2.94118 3 1 3 0.2 5
    particle block ice ^0 ^ ^5.88235 3 1 3 0.2 5
    particle block ice ^0 ^ ^8.82353 3 1 3 0.2 5
    particle block ice ^0 ^ ^11.76471 3 1 3 0.2 5
    particle block ice ^0 ^ ^14.70588 3 1 3 0.2 5
    particle block ice ^0 ^ ^17.64706 3 1 3 0.2 5
    particle block ice ^0 ^ ^20.58824 3 1 3 0.2 5
    particle block ice ^0 ^ ^23.52941 3 1 3 0.2 5
    particle block ice ^0 ^ ^26.47059 3 1 3 0.2 5
    particle block ice ^0 ^ ^29.41176 3 1 3 0.2 5
    particle block ice ^0 ^ ^32.35294 3 1 3 0.2 5
    particle block ice ^0 ^ ^35.29412 3 1 3 0.2 5
    particle block ice ^0 ^ ^38.23529 3 1 3 0.2 5
    particle block ice ^0 ^ ^41.17647 3 1 3 0.2 5
    particle block ice ^0 ^ ^44.11765 3 1 3 0.2 5
    particle block ice ^0 ^ ^47.05882 3 1 3 0.2 5
    particle block ice ^0 ^ ^50 3 1 3 0.2 5

# 演出召喚
    data modify storage api: Argument.ID set value 2164
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ^ ^ ^ run function api:object/summon
