#> asset:artifact/1038.flame_devil_head/trigger/hurt/1.trigger
#
# 被ダメ時にTagがついているかチェック
#
# @within tag/function asset:artifact/damage/from_entity/

# フルセットなら実行
    execute if data storage asset:context id{head:1038} if score @s SU.EquipCount matches 4 run function asset:artifact/1038.flame_devil_head/trigger/hurt/2.cooldown