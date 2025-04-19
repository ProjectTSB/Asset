#> asset:artifact/0915.flame_hunter_hat/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0915.flame_hunter_hat/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 部位数チェック
    data modify storage api: Argument.ID set value 245
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect{Stack:4} run return fail

# 演出
    particle flame ~ ~1.7 ~ 0.3 0.2 0.3 0 30 normal @a
    particle block azalea ~ ~1.7 ~ 0.3 0.2 0.3 0 60 normal @a
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.2 0
    playsound block.grass.break player @a ~ ~ ~ 0.4 1.4 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.8 1 0
