#> asset:artifact/0820.jewel_rod_of_horai/click/3.3.3.set_attack_data
#
# セット装備の装備数をカウントして攻撃レベルを決定
#
# @within function asset:artifact/0820.jewel_rod_of_horai/click/

# 装備状況確認
    data modify storage api: Argument.ID set value 255
    function api:entity/mob/effect/get/from_id
    execute store result score $MS.AttackLevel Temporary run data get storage api: Return.Effect.Stack
