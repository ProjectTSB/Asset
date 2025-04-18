#> asset:object/2221.aurora_scaffold/tick/break/process/
#
#
#
# @within function asset:object/2221.aurora_scaffold/tick/

#> Private
# @private
    #declare score_holder $Interval

# 3Tick毎に実行
# ついでに実行毎にCMDListの最後尾のデータを消し飛ばしておく
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 run function asset:object/2221.aurora_scaffold/tick/break/process/as_display.m with storage asset:context this
    execute if score $Interval Temporary matches 0 run data remove storage asset:context this.CMDList[-1]
    scoreboard players reset $Interval Temporary
