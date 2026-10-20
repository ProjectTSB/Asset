#> asset:object/1205.fire_extinguisher/hit_entity/damage
#
#
#
# @within function asset:object/1205.fire_extinguisher/hit_entity/check_duplicate

# ダメージ
    function api:damage/

# 燃えてれば、ついでに火を消す
    execute if predicate lib:is_burning run data modify entity @s Fire set value -1s
