#> asset:mob/0439.dps_checker_boy/tick/dps_check/
#
#
#
# @within function asset:mob/0439.dps_checker_boy/tick/

#> Private
# @within function asset:mob/0439.dps_checker_boy/tick/dps_check/*
    #declare score_holder $DPS
    #declare score_holder $Tick
    #declare score_holder $DPSCheckDuration

execute store result score $Tick Temporary run data get storage asset:context this.Tick
scoreboard players add $Tick Temporary 1
execute store result storage asset:context this.Tick int 1 run scoreboard players get $Tick Temporary

execute store result score $DPS Temporary run data get storage asset:context this.Sum
scoreboard players operation $DPS Temporary *= $20 Const
scoreboard players operation $DPS Temporary /= $Tick Temporary
execute store result storage asset:context this.DPS int 0.01 run scoreboard players get $DPS Temporary

# 上に乗ってるヤツとして実行、テキストを変更
    execute on passengers run function asset:mob/0439.dps_checker_boy/tick/dps_check/set_text.m with storage asset:context this

execute store result score $DPSCheckDuration Temporary run data get storage asset:context this.DPSCheckDuration
execute if score $Tick Temporary = $DPSCheckDuration Temporary run function asset:mob/0439.dps_checker_boy/tick/dps_check/end

scoreboard players reset $DPS Temporary
scoreboard players reset $Tick Temporary
scoreboard players reset $DPSCheckDuration Temporary
