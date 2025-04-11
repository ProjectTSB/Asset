#> asset:object/2190.eclael_slashbeam/tick/model
#
# Mobのtick時の処理
#
# @within function asset:object/2190.eclael_slashbeam/tick/

# アニメーション
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches ..0 run data modify entity @s item.tag.CustomModelData set value 20536
    execute if score $Interval Temporary matches 1 run data modify entity @s item.tag.CustomModelData set value 20537
    execute if score $Interval Temporary matches 2.. run data modify entity @s item.tag.CustomModelData set value 20538
    scoreboard players reset $Interval Temporary
