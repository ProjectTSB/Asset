#> asset:object/2026.lastbattle_platform/load
#
# Objectに利用するスコアボード等の初期化処理
#
# @within tag/function asset:object/load

#> 定義類はここに
# @within function
#   asset:object/2026.lastbattle_platform/**
#   asset:mob/1004.tultaria/tick/skill/**
#   asset:mob/1004.tultaria/tick/base_move/generate_platform/
    scoreboard objectives add 2026.ID dummy
    scoreboard objectives add 2026.CoreID dummy
