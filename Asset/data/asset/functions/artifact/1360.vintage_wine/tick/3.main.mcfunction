#> asset:artifact/1360.vintage_wine/tick/3.main
#
#
#
# @within function asset:artifact/1360.vintage_wine/tick/2.check_condition

#> Private
# @private
    #declare score_holder $Stack

# 2秒につきスタックを1増加
    scoreboard players operation $Stack Temporary = @s 11S.Tick
    scoreboard players operation $Stack Temporary /= $40 Const
    scoreboard players add $Stack Temporary 1
# 最大スタック
    scoreboard players operation $Stack Temporary < $10 Const

# 最大スタック到達後も1秒周期を保ち、経過時間のオーバーフローを防ぐ
    execute if score @s 11S.Tick matches 380.. run scoreboard players set @s 11S.Tick 360

# 固有バフを付与
    data modify storage api: Argument.ID set value 369
    execute store result storage api: Argument.Stack int 1 run scoreboard players get $Stack Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Stack Temporary
