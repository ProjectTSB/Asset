#> asset:artifact/0608.u_and_w_06_empty/sneak_1s/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/608/sneak_1s/

playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 0.5
playsound entity.horse.armor player @p ~ ~ ~ 0.6 0.6
data modify storage api: Argument.ID set value 607
function api:artifact/replace/from_id
