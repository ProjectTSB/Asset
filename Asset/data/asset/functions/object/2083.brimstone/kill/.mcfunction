#> asset:object/2083.brimstone/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2083/kill

# hit entityとhit block両方で同じ処理書くのも冗長なのでここで書く
# plausound
    playsound entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1 0.5 1

# particle
    particle minecraft:large_smoke ~ ~ ~ 0.6 0.4 0.6 0.1 100 normal
    particle minecraft:flame ~ ~ ~ 0.3 0.2 0.3 0.05 50 normal

# damage
    data modify storage api: Argument.Damage set value 20f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.BypassArmorDefense set value true
    data modify storage api: Argument.BypassToughness set value true
    data modify storage api: Argument.BypassEnchantments set value true
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの対地ミサイルによって撃破された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
