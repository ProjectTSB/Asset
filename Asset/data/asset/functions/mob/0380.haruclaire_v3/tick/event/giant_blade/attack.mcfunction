#> asset:mob/0380.haruclaire_v3/tick/event/giant_blade/attack
#
# ジャイアントブレード
#
# @within
#    function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/
#    function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/short


# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 4
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 25
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute positioned ^ ^ ^25 run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set value 50.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset
    tag @a[tag=DXYZ] remove DXYZ

# 演出
    playsound entity.wither.break_block hostile @a ~ ~ ~ 2 0.7
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYAHAAwCcARgIwUBmFAtHQGwDsALC90WRosyggIYsAxjUZxRI7pzKjRYXBlEBbBMkBbvgAI6qsDFEAnTQGck4CQHs8GCEjplcjU7Y3WwAN1Eo8bXAADyQKXCgwgF8o3Ahbbz8AoLBQxHCwSMQAVgoY3FtGRgs4J3TcGjgALzQ4UzDcNAsAIWra0wBRAEc8fxQoAGUTCTgSREZ-EpiAXSA_3
    # 線 1
    particle explosion ^0 ^ ^0 3 1 3 0 3
    particle explosion ^0 ^ ^2.94118 3 1 3 0 3
    particle explosion ^0 ^ ^5.88235 3 1 3 0 3
    particle explosion ^0 ^ ^8.82353 3 1 3 0 3
    particle explosion ^0 ^ ^11.76471 3 1 3 0 3
    particle explosion ^0 ^ ^14.70588 3 1 3 0 3
    particle explosion ^0 ^ ^17.64706 3 1 3 0 3
    particle explosion ^0 ^ ^20.58824 3 1 3 0 3
    particle explosion ^0 ^ ^23.52941 3 1 3 0 3
    particle explosion ^0 ^ ^26.47059 3 1 3 0 3
    particle explosion ^0 ^ ^29.41176 3 1 3 0 3
    particle explosion ^0 ^ ^32.35294 3 1 3 0 3
    particle explosion ^0 ^ ^35.29412 3 1 3 0 3
    particle explosion ^0 ^ ^38.23529 3 1 3 0 3
    particle explosion ^0 ^ ^41.17647 3 1 3 0 3
    particle explosion ^0 ^ ^44.11765 3 1 3 0 3
    particle explosion ^0 ^ ^47.05882 3 1 3 0 3
    particle explosion ^0 ^ ^50 3 1 3 0 3
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYAHAAwCcARgIwUBmFAtHQGwDsALC90WRosyggIYsAxjUZxRI7pzKjRYXBlEBbBMkBbvgAI6qsDFEAnTQGck4CQHs8GCEjplcjU7Y3WwAN1Eo8bXAADyQKXCgwgF8o3Ahbbz8AoLBQxHCwSMQAVgoY3FtGRgs4J3TcGjgALzQ4UzDcNAsAIWra0wBRAEc8fxQoAGUTCTgSREZ-EpiAXSA_3
    # 線 1
    particle cloud ^0 ^ ^0 3 1 3 0.2 5
    particle cloud ^0 ^ ^2.94118 3 1 3 0.2 5
    particle cloud ^0 ^ ^5.88235 3 1 3 0.2 5
    particle cloud ^0 ^ ^8.82353 3 1 3 0.2 5
    particle cloud ^0 ^ ^11.76471 3 1 3 0.2 5
    particle cloud ^0 ^ ^14.70588 3 1 3 0.2 5
    particle cloud ^0 ^ ^17.64706 3 1 3 0.2 5
    particle cloud ^0 ^ ^20.58824 3 1 3 0.2 5
    particle cloud ^0 ^ ^23.52941 3 1 3 0.2 5
    particle cloud ^0 ^ ^26.47059 3 1 3 0.2 5
    particle cloud ^0 ^ ^29.41176 3 1 3 0.2 5
    particle cloud ^0 ^ ^32.35294 3 1 3 0.2 5
    particle cloud ^0 ^ ^35.29412 3 1 3 0.2 5
    particle cloud ^0 ^ ^38.23529 3 1 3 0.2 5
    particle cloud ^0 ^ ^41.17647 3 1 3 0.2 5
    particle cloud ^0 ^ ^44.11765 3 1 3 0.2 5
    particle cloud ^0 ^ ^47.05882 3 1 3 0.2 5
    particle cloud ^0 ^ ^50 3 1 3 0.2 5
