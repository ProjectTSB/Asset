#> asset:mob/0217.medousa_eye/tick/find_target
#
# 特定の条件を満たすプレイヤーを探す
#
# @within function asset:mob/0217.medousa_eye/tick/fix_direction

# 石化デバフ(ID:606)を持っていないプレイヤーを探す
    data modify storage api: Argument.ID set value 606
    function api:entity/mob/effect/get/from_id

# 既にTagが付与されているプレイヤーがいない、かつデバフを持っていないプレイヤーにTagを付与
    execute unless entity @p[tag=Target] unless data storage api: Return.Effect run tag @s add Target
