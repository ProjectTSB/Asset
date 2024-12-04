#> asset:object/2059.thunder_curtain/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2059/hit_entity

# ダメージをフィールドから取得
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雷に撃たれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの稲妻に焼け落ちた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ,tag=!PlayerShouldInvulnerable,distance=..15] run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=DXYZ,distance=..15] remove DXYZ
