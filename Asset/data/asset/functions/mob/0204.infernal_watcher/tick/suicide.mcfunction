#> asset:mob/0204.infernal_watcher/tick/suicide
#
#
#
# @within function asset:mob/0204.infernal_watcher/tick/

# 時間チェック
    execute unless score @s General.Mob.Tick matches 1000.. run return fail

# SFX
    particle reverse_portal ~ ~1.68 ~ 0.25 0.25 0.25 0.5 20 force @a[distance=..40]
# 消える
    function api:mob/remove
