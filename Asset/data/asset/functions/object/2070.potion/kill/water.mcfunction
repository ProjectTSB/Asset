#> asset:object/2070.potion/kill/water
#
# 水
#
# @within function asset:object/2070.potion/kill/

# 演出
    particle snowflake ~ ~1.2 ~ 1 0.4 1 0 50 normal @a
    particle falling_dust diamond_block ~ ~1.2 ~ 1 0.4 1 0 20 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 2 0
    particle end_rod ~ ~ ~ 0 0 0 0.4 100

# デバフ
    effect give @a[tag=!PlayerShouldInvulnerable,distance=..3] slowness 5 2 true

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの氷の薬品により氷に閉ざされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset
