#> asset:mob/2000.abstract_angel/bossbar/remove.m
#
#
#
# @input args
#   UUID: int
# @within function
#   asset:mob/2000.abstract_angel/remove/
#   asset:mob/2000.abstract_angel/death/

# ボスバーを削除する
    $bossbar remove asset:angel$(UUID)
