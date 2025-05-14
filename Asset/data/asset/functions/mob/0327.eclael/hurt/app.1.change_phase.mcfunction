#> asset:mob/0327.eclael/hurt/app.1.change_phase
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0327.eclael/hurt/


# 体力が半分以下かどうかを検知する
    function api:mob/get_health_percent
# 代入する
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 難易度に応じて後半戦に移行
    execute if predicate api:global_vars/difficulty/easy if score $HealthPer Temporary matches ..40 run function asset:mob/0327.eclael/tick/app.general/7.start_change_animation
    execute if predicate api:global_vars/difficulty/max/normal if score $HealthPer Temporary matches ..50 run function asset:mob/0327.eclael/tick/app.general/7.start_change_animation
    execute if predicate api:global_vars/difficulty/min/3_blessless if score $HealthPer Temporary matches ..60 run function asset:mob/0327.eclael/tick/app.general/7.start_change_animation

# 終了
    scoreboard players reset $HealthPer Temporary
