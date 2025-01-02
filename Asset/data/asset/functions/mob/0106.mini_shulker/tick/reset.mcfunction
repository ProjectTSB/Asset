#> asset:mob/0106.mini_shulker/tick/reset
#
# リセット処理
#
# @within function asset:mob/0106.mini_shulker/tick/**

# クールダウン
    execute store result score $2Y.Temp Temporary run function lib:random/
    scoreboard players operation $2Y.Temp Temporary %= $20 Const
    execute store result score @s General.Mob.Tick run scoreboard players remove $2Y.Temp Temporary 30
    scoreboard players reset $2Y.Temp

# 形態リセット
    data remove storage asset:context this.Target
    function asset:mob/0106.mini_shulker/tick/shell/close
