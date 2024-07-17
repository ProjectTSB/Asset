#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/2.ready
#
# 予備動作的な
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/1

# 2tick間隔で前方に線を表示
# 強化状態なら追加で2本表示する
    scoreboard players operation $Interval Temporary = @s 26.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 if entity @s[scores={26.Tick=..19}] run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line
    execute if score $Interval Temporary matches 0 if entity @s[tag=26.Phase2] rotated ~30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line
    execute if score $Interval Temporary matches 0 if entity @s[tag=26.Phase2] rotated ~-30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line
    scoreboard players reset $Interval Temporary
