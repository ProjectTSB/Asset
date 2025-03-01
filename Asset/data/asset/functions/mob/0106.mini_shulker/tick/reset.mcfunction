#> asset:mob/0106.mini_shulker/tick/reset
#
# リセット処理
#
# @within function asset:mob/0106.mini_shulker/tick/**

# クールダウン
    execute store result score @s General.Mob.Tick run random value -20..19

# 形態リセット
    data remove storage asset:context this.Target
    function asset:mob/0106.mini_shulker/tick/shell/close
