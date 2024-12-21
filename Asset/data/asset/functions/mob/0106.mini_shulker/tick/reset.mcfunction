#> asset:mob/0106.mini_shulker/tick/reset
#
# リセット処理
#
# @within function asset:mob/0106.mini_shulker/tick/**

# クールダウン
    execute store result score $2Y.Random Temporary run function lib:random/
    scoreboard players operation $2Y.Random Temporary %= $20 Const
    execute store result score @s General.Mob.Tick run scoreboard players remove $2Y.Random Temporary 30
    scoreboard players reset $2Y.Random

# 形態リセット
    data remove storage asset:context this.TargetID
    data remove storage asset:context this.Rotation
    function asset:mob/0106.mini_shulker/tick/shell/close
