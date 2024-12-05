#> asset:object/1057.giant_pumpkin/hit_entity/beginning_hit
#
# 回転し始めのヒット
#
# @within function asset:object/1057.giant_pumpkin/hit_entity/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Beginning
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute at @a if score @s 1057.OwnerID = @p UserID as @p run function api:damage/modifier
    execute as @e[type=#lib:living,tag=DXYZ,distance=..5] run function api:damage/
    function api:damage/reset

# 鈍足を付与
    effect give @e[type=#lib:living,tag=DXYZ,distance=..5] slowness 1 1 true
