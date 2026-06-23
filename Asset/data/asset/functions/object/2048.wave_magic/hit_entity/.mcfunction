#> asset:object/2048.wave_magic/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2048/hit_entity

# MobのAttackトリガー起動用Metadata
    data modify storage api: Argument.Metadata set value "370.Debuff"

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute positioned ~-0.75 ~ ~-0.75 as @a[tag=!PlayerShouldInvulnerable,dx=0.5,dy=1.5,dz=0.5] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
