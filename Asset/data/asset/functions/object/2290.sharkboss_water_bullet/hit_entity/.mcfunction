#> asset:object/2290.sharkboss_water_bullet/hit_eneity/
#
# 
#
# @within function asset:object/2290.sharkboss_water_bullet/hit_entity


 # ダメージ
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    #data modify storage api: Argument.Damage set value 10
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sはびしょびしょになってしまった","with":[{"selector":"@s"}]}'
    function api:damage/modifier
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
# リセット
    function api:damage/reset
    #say a
    # 消失
    #    function asset:object/call.m {method:kill}
