#> asset:object/2178.tiamat_icicledive/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2178.tiamat_icicledive/tick/

# ヒット判定
    data modify storage lib: args.dx set value 3.5
    data modify storage lib: args.dy set value 5
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..30]"
    execute positioned ^ ^ ^10 run function lib:rotatable_dxyz/m with storage lib: args
# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset
    tag @a[tag=DXYZ] remove DXYZ

# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYARgAwCMAHAMxwCcNAtAKwCGAxlywCwA2WizJU+HFgCY4lRhwEcmHCmFwYOAWwTJAW74ACKqrAwOAJ00BnJOC4B7PBghI+uAGanbG62ABuHFHja4AAeSBS4UGEAvlG4ELbefgFBYKGI4WCRiFRsMbi2rq4WcE7puGRwAF5ocKZhuGgWAEJVNaYAogCOeP4oUADKJlxwJIiu-sUxALpAA_3
# 線 1
execute positioned ^0 ^ ^0 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["2178.Temp"]}
execute positioned ^0 ^ ^5 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["2178.Temp"]}
execute positioned ^0 ^ ^10 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["2178.Temp"]}
execute positioned ^0 ^ ^15 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["2178.Temp"]}

# 演出
    execute as @e[type=area_effect_cloud,tag=2178.Temp] at @s run function asset:object/2178.tiamat_icicledive/tick/effect
