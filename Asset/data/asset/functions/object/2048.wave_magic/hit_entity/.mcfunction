#> asset:object/2048.wave_magic/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2048/hit_entity

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function api:damage/
    function api:damage/reset

# Debuff:trueならデバフを付与
    execute if data storage asset:context this{Debuff:true} run function asset:object/2048.wave_magic/hit_entity/debuff

# 消滅
    kill @s
