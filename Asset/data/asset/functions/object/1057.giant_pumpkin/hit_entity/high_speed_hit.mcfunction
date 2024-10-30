#> asset:object/1057.giant_pumpkin/hit_entity/high_speed_hit
#
# 高速回転状態のヒット判定
#
# @within function asset:object/1057.giant_pumpkin/hit_entity/

# ダメージ
    data modify storage api: Argument.Damage set value 100f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute at @a if score @s 1057.OwnerID = @p UserID as @p run function api:damage/modifier
    execute as @e[type=#lib:living,tag=DXYZ,distance=..5] run function api:damage/
    function api:damage/reset

# 鈍足を付与
    effect give @e[type=#lib:living,tag=DXYZ,distance=..5] slowness 3 3 true
