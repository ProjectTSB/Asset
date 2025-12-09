#> asset:artifact/1332.bebebeam/trigger/beam/shoot
#
#
#
# @within function asset:artifact/1332.bebebeam/trigger/beam/

# 再帰でヒット判定 兼 演出用に何ブロックまで視線が通っているかチェック
    scoreboard players set $110.Range Temporary 0
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1332.bebebeam/trigger/beam/recursive

# レーザー演出Object召喚
    function asset:artifact/1332.bebebeam/trigger/beam/summon_object

# リセット
    scoreboard players reset $110.Range
