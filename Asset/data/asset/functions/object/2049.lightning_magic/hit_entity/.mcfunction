#> asset:object/2049.lightning_magic/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2049/hit_entity

# 円柱Libを用いて判定する
    data modify storage lib: Argument.BoundingCylinder.Radius set value 1.2d
    data modify storage lib: Argument.BoundingCylinder.Height set value 3.25d
    data modify storage lib: Argument.BoundingCylinder.Selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..5]"
    execute positioned ~ ~-0.25 ~ run function lib:bounding_cylinder/

# MobのAttackトリガー起動用Metadata
    data modify storage api: Argument.Metadata set value "371.Debuff"

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=BoundingCylinder,distance=..5] run function api:damage/
    function api:damage/reset

# ヒットしたなら消滅
    execute if entity @a[tag=BoundingCylinder,distance=..5,limit=1] run function asset:object/call.m {method:"kill"}

# リセット
    tag @a[tag=BoundingCylinder,distance=..5] remove BoundingCylinder
