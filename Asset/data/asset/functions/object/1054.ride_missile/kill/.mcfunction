#> asset:object/1054.ride_missile/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1054/kill

# 演出
    particle explosion ~ ~ ~ 0.3 0.3 0.3 1 10
    particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force
    playsound entity.generic.explode neutral @a ~ ~ ~ 1 1

# ダメージ - プレイヤー
    data modify storage api: Argument.Damage set from storage asset:context this.DamageForPlayer
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.BypassModifier set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは%2$sのミサイルによって塵と化した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
    execute as @p[tag=1054.Owner] run function api:damage/modifier
    data modify storage api: Argument.BypassModifier set value false
    execute positioned ~-3 ~-3 ~-3 as @a[tag=!PlayerShouldInvulnerable,dx=5,dy=5,dz=5] run function api:damage/
    function api:damage/reset
# ダメージ - 敵
    data modify storage api: Argument.Damage set from storage asset:context this.DamageForEnemy
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=1054.Owner] run function api:damage/modifier
    execute positioned ~-3 ~-3 ~-3 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=5,dy=5,dz=5] run function api:damage/
    function api:damage/reset

function asset:object/super.method
