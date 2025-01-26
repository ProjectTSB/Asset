#> asset:artifact/0999.sextaple_ultima/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0999.sextaple_ultima/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 召喚
    execute rotated ~000 -25 anchored eyes positioned ^ ^ ^5 run function asset:artifact/0999.sextaple_ultima/trigger/gun_summon
    execute rotated ~060 -25 anchored eyes positioned ^ ^ ^5 run function asset:artifact/0999.sextaple_ultima/trigger/gun_summon
    execute rotated ~120 -25 anchored eyes positioned ^ ^ ^5 run function asset:artifact/0999.sextaple_ultima/trigger/gun_summon
    execute rotated ~180 -25 anchored eyes positioned ^ ^ ^5 run function asset:artifact/0999.sextaple_ultima/trigger/gun_summon
    execute rotated ~240 -25 anchored eyes positioned ^ ^ ^5 run function asset:artifact/0999.sextaple_ultima/trigger/gun_summon
    execute rotated ~300 -25 anchored eyes positioned ^ ^ ^5 run function asset:artifact/0999.sextaple_ultima/trigger/gun_summon
