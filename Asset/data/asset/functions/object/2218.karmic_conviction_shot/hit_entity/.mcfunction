#> asset:object/2218.karmic_conviction_shot/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2218/hit_entity

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @a[tag=!PlayerShouldInvulnerable,dx=0.5,dy=0.5,dz=0.5,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# 死ぬ
    kill @s
