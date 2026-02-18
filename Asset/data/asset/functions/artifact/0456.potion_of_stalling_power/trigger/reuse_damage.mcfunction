#> asset:artifact/0456.potion_of_stalling_power/trigger/reuse_damage
#
#
#
# @within function asset:artifact/0456.potion_of_stalling_power/trigger/3.main

# 演出
    particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 0.03 100
    playsound minecraft:entity.evoker.prepare_summon player @a

# 最大体力に比例した固定ダメージを受ける
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.2 run data get storage api: Return.MaxHealth
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは速度の代償を払った","with":[{"selector":"@s"}]}]'
    function api:damage/
    function api:damage/reset
