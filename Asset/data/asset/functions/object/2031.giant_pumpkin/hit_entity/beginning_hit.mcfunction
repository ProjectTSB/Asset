#> asset:object/2031.giant_pumpkin/hit_entity/beginning_hit
#
# 回転し始めのヒット判定
#
# @within function asset:object/2031.giant_pumpkin/hit_entity/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Beginning
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[gamemode=!creative,tag=DXYZ,distance=..5] run function api:damage/
    function api:damage/reset
