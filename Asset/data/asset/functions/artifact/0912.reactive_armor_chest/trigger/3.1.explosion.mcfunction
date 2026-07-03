#> asset:artifact/0912.reactive_armor_chest/trigger/3.1.explosion
#
# 爆発で周囲にダメージを与える
#
# @within function asset:artifact/0912.reactive_armor_chest/trigger/3.main

# mob敵へのダメージ
    data modify storage api: Argument.Damage set value 500f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,distance=..3] run function api:damage/
    function api:damage/reset

# プレイヤーへのダメージ
    data modify storage api: Argument.Damage set value 10f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sはリアクティブアーマーの爆発に巻き込まれた","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    execute as @a[tag=!this,distance=..3] run function api:damage/
    function api:damage/reset

# パーティクル
    particle explosion ~ ~ ~ 1 1 1 0 10

# 音
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.75 1
