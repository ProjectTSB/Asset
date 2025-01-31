#> asset:artifact/1080.allochromatic_empty/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1080.allochromatic_empty/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    execute if entity @s[tag=U0.Main] run function asset:artifact/common/use/mainhand
    execute if entity @s[tag= U0.Off] run function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 0.8
    playsound entity.horse.armor player @p ~ ~ ~ 0.6 0.8

# replace
    data modify storage api: Argument.ID set value 1079
    # execute if entity @s[tag=U0.Main] run data modify storage api: Argument.Slot set value "mainhand"
    execute if entity @s[tag= U0.Off] run data modify storage api: Argument.Slot set value "offhand"
    function api:artifact/replace/from_id
