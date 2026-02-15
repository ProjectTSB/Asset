#> asset:mob/0456.gargo_ex_machina/tick/event/activate/clear_dummy_bossbar
#
# 起動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/activate/
# @private
    #declare score_holder $TempValue

# ひつじBossbar表示
    scoreboard players set $TempValue Global 0
    execute store result bossbar asset:co_scape_sheep value run scoreboard players get $TempValue Global
    scoreboard players reset $TempValue
