#> asset:object/2291.sharkboss_pufferfish/hit_block/bomb
#
# 
#
# @within function asset:object/2291.sharkboss_pufferfish/hit_block/

# 演出
    particle explosion ~ ~ ~ 0.8 0.8 0.8 1 10 normal
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1

 # ダメージ
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    #data modify storage api: Argument.Damage set value 10
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sはふぐに当たってしまった","with":[{"selector":"@s"}]}'
    function api:damage/modifier
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset
    #say a
    # 消失
    function asset:object/call.m {method:kill}
