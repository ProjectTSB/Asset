#> asset:object/2081.shower_of_cherry_blossoms/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2081/hit_entity

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって桜の木の下に埋められた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは桜の木を切り倒した罪を背負いながら、%2$sによって倒された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=2081.Target,distance=..10] run function api:damage/
    function api:damage/reset

# プレイヤーのターゲットTagを削除
    tag @a[tag=2081.Target,distance=..10] remove 2081.Target
