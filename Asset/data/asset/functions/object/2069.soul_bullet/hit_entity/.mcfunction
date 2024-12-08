#> asset:object/2069.soul_bullet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2069/hit_entity

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
