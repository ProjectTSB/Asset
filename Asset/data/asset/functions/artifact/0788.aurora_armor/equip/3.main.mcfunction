#> asset:artifact/0788.aurora_armor/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0788.aurora_armor/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest
# ここから先は神器側の効果の処理を書く

# 部位数チェック
    data modify storage api: Argument.ID set value 244
    function api:entity/mob/effect/get/from_id

# 演出
    execute unless data storage api: Return.Effect{Stack:4} rotated ~ 0 positioned ~ ~1.1 ~ run function asset:artifact/0788.aurora_armor/equip/vfx
    execute unless data storage api: Return.Effect{Stack:4} run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.5 2 0
    execute unless data storage api: Return.Effect{Stack:4} run playsound block.beacon.activate player @a ~ ~ ~ 0.5 2 0
