#> asset:mob/0372.tutankhamen/tick/skill/many_shoot/summon
#
# 魔法陣を召喚
#
# @within function asset:mob/0372.tutankhamen/tick/skill/many_shoot/

# プレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p eyes

# 50:50で左回転か右回転か決める
    execute if predicate lib:random_pass_per/50 run data modify storage api: Argument.FieldOverride.LeftRotate set value true

    data modify storage api: Argument.ID set value 2090
    data modify storage api: Argument.FieldOverride.Scale set value [2f,2f,0.01f]
    data modify storage api: Argument.FieldOverride.CMD set value 20443
    data modify storage api: Argument.FieldOverride.Color set value 5436415
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    function api:object/summon

kill @s
