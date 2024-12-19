#> asset:mob/0397.crystal_turret/ai/projectile/0.summon
#
# 弾幕召喚
#
# @within function asset:mob/0397.crystal_turret/ai/projectile/4.fire

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2023
    function api:object/summon
