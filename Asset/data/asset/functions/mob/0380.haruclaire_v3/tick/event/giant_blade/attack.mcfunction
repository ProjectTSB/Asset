#> asset:mob/0380.haruclaire_v3/tick/event/giant_blade/attack
#
# ジャイアントブレード
#
# @within
#    function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/
#    function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/short


# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 5
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 25
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute positioned ^ ^ ^25 run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Giant
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは かたいこおりに まっぷたつにされた","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset
    tag @a[tag=DXYZ] remove DXYZ

# 演出
    playsound entity.wither.break_block hostile @a ~ ~ ~ 2 0.7
    function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/particle_attack

# 演出召喚
    data modify storage api: Argument.ID set value 2164
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ^ ^-0.6 ^28 run function api:object/summon

    data modify storage api: Argument.FieldOverride set value {Color:10942975,Scale:[12f,12f,7f],Transformation:{left_rotation:[0f,-0.7068252f,0f,0.7073883f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    data modify storage api: Argument.ID set value 2001
    execute positioned ^ ^2 ^2 run function api:object/summon

# 攻撃位置召喚
    # [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYAhgOwDMArAGYBGNAjALQDGAHJwEysAsVBgDZWZMpwCcrZiwAMkiu1l0aDMLgxkAtgmSAt3wAEzDWBhkATjoDOScOwD2eDBCTMquOhYfa7YAG5kKHh64AAeSHK4UJEAvrG4EA5+gcGhYBGIUWAxiDRy8bgOdHTWcK5ZuAxwAF5ocBaRuGjWAEK19RYAogCOeEEoUADK5uxwJIh0QWXxALpAA_3
    # 線 1
    summon area_effect_cloud ^0 ^2 ^0 {Tags:["AK.Temp.AttackRotation"],Duration:1}
    summon area_effect_cloud ^0 ^2 ^4.16667 {Tags:["AK.Temp.AttackRotation"],Duration:1}
    summon area_effect_cloud ^0 ^2 ^8.33333 {Tags:["AK.Temp.AttackRotation"],Duration:1}
    summon area_effect_cloud ^0 ^2 ^12.5 {Tags:["AK.Temp.AttackRotation"],Duration:1}
    summon area_effect_cloud ^0 ^2 ^16.66667 {Tags:["AK.Temp.AttackRotation"],Duration:1}
    summon area_effect_cloud ^0 ^2 ^20.83333 {Tags:["AK.Temp.AttackRotation"],Duration:1}
    summon area_effect_cloud ^0 ^2 ^25 {Tags:["AK.Temp.AttackRotation"],Duration:1}
    summon area_effect_cloud ^0 ^2 ^29.16667 {Tags:["AK.Temp.AttackRotation"],Duration:1}
    summon area_effect_cloud ^0 ^2 ^33.33333 {Tags:["AK.Temp.AttackRotation"],Duration:1}
    scoreboard players operation @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,distance=..80] MobUUID = @s MobUUID
# 弾召喚
    execute if predicate api:global_vars/difficulty/min/normal as @e[type=area_effect_cloud,tag=AK.Temp.AttackRotation,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/attack_piece
