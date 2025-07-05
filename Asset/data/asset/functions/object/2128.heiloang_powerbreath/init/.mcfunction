#> asset:object/2128.heiloang_powerbreath/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2128/init

# 位置合わせ
    tp @s ~ ~-0.5 ~ 0 0

# ハードでは角度変更
    execute if predicate api:global_vars/difficulty/max/2_hard run return 0
    execute store result score $Interval Temporary run data get storage asset:context this.Count
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 at @s run tp @s ~ ~ ~ 22.5 0
    scoreboard players reset $Interval Temporary
