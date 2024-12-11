#> asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon
#
# 魔法陣を召喚
#
# @within function asset:mob/0372.tutankhamen/tick/skill/many_shoot/spread

# プレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p eyes

# 召喚
    data modify storage api: Argument.ID set value 2092
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    function api:object/summon

# 消滅
    kill @s
