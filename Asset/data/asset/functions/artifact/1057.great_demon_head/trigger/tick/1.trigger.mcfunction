#> asset:artifact/1057.great_demon_head/trigger/tick/1.trigger
#
# フルセット時の毎Tick処理
#
# @within tag/function asset:artifact/tick

# フルセットなら実行
    execute if data storage asset:context id{head:1057} if score @s TD.EquipCount matches 4 run function asset:artifact/1057.great_demon_head/trigger/tick/2.heal