#> asset:mob/0204.infernal_watcher/tick/update_state/
#
# 形態管理
#
# @within function asset:mob/0204.infernal_watcher/tick/

scoreboard players operation $5O.RageTimer Temporary = @s General.Mob.Tick
scoreboard players operation $5O.RageTimer Temporary %= $100 Const
execute if score $5O.RageTimer Temporary matches 40 run function asset:mob/0204.infernal_watcher/tick/update_state/start_frenzy
execute if score $5O.RageTimer Temporary matches 0 run function asset:mob/0204.infernal_watcher/tick/update_state/end_frenzy
scoreboard players reset $5O.RageTimer
