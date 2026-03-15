#> asset:mob/0456.gargo_ex_machina/load
#
# Mobに利用するスコアボード等の初期化処理
#
# @within tag/function asset:mob/load

#> 定義類はここに
# @within function asset:mob/0456.gargo_ex_machina/**
    scoreboard objectives add CO.EventTimer dummy
    scoreboard objectives add CO.FieldModify.Color dummy
    scoreboard objectives add CO.Counter dummy
    scoreboard objectives add CO.IdleCount dummy
#> Object管理用
# @within function asset:mob/0456.gargo_ex_machina/**
# @within function asset:object/2260.gem_attack_drone/**
# @within function asset:object/2261.gem_yeeter_drone/**
# @within function asset:object/2262.gem_panjan_drone/**
# @within function asset:object/2269.gem_rocket_punch/**
    scoreboard objectives add CO.ObjectId dummy
