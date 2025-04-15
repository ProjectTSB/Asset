#> asset:object/1046.magic_bullet/hit_entity/self_damage
#
# 7発目の弾丸
#
# @input as Player
# @within function asset:object/1046.magic_bullet/hit_entity/

# 自身を貫くダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Self
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    function asset:object/call.m {method:"check_duplicate"}
    execute if predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run function api:damage/
    function api:damage/reset
