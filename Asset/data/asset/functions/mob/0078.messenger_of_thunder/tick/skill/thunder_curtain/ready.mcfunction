#> asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/ready
#
# 予備動作
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/

# 2tick間隔で表示
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/vfx
    scoreboard players reset $Interval Temporary
