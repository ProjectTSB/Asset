#> asset:artifact/1080.allochromatic_empty/sneak/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1080.allochromatic_empty/sneak/2.check_condition

# スロットを取得
    # execute if data storage asset:context id{ offhand:1080} run data modify storage asset:temp U0.Slot set value "offhand"
    # execute if data storage asset:context id{mainhand:1080} run data modify storage asset:temp U0.Slot set value "mainhand"
# 使用
    function asset:artifact/common/use/mainhand
# 演出
    playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 0.8
    playsound entity.horse.armor player @a ~ ~ ~ 0.6 0.8
# 神器の置き換え
    data modify storage api: Argument.ID set value 1079
    # data modify storage api: Argument.Slot set from storage asset:temp U0.Slot
    function api:artifact/replace/from_id
# リセット
    data remove storage asset:temp U0
