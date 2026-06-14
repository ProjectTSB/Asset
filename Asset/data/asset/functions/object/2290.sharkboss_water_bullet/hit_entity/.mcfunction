#> asset:object/2290.sharkboss_water_bullet/hit_eneity/
#
# 
#
# @within function asset:object/2290.sharkboss_water_bullet/hit_entity


 # ダメージ
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sはびしょびしょになってしまった","with":[{"selector":"@s"}]}'
    function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/

# 演出
    particle block water ~ ~ ~ 0.1 0.1 0.1 1 4 normal
# リセット
    function api:damage/reset
    function asset:object/call.m {method:kill}
