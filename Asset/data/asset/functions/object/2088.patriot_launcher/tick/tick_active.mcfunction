#> asset:object/2088.patriot_launcher/tick/tick_active
#
#
#
# @within function asset:object/2088.patriot_launcher/tick/

#> prv
# @private
    #declare score_holder $MissileCooltime

#> within
# @within
#   function asset:object/2088.patriot_launcher/tick/tick_active
#   function asset:object/2088.patriot_launcher/tick/set_hp_gauge
    #declare score_holder $CurrentDurability

# 耐久値の減少処理
    execute store result score $CurrentDurability Temporary run data get storage asset:context this.Durability
    execute if entity @s[tag=PatriotLauncher.HitMissile] store result storage asset:context this.Durability int 1 run scoreboard players remove $CurrentDurability Temporary 1
    execute unless predicate api:global_vars/difficulty/min/hard run function asset:object/2088.patriot_launcher/tick/set_hp_gauge
    execute if predicate api:global_vars/difficulty/min/hard run function asset:object/2088.patriot_launcher/tick/set_hp_gauge_hard
    tag @s remove PatriotLauncher.HitMissile


# 耐久が0の場合死亡状態へ遷移して処理をキャンセル
# 回復までの時間は修理者無しで20秒想定(tickごとに128回復　128*20tick*20s)
    execute if score $CurrentDurability Temporary matches ..0 run tag @s add PatriotLauncher.IsBroken
    execute if score $CurrentDurability Temporary matches ..0 run data modify storage asset:context this.IsBroken set value 1b
    execute if score $CurrentDurability Temporary matches ..0 run data modify storage asset:context this.RepairTime set from storage asset:context this.MaxRepairTime
    execute if score $CurrentDurability Temporary matches ..0 on passengers if entity @s[type=text_display,tag=PatriotLauncher.DisplayName] run data modify entity @s text set value '[{"bold":true,"color":"#FFFFFF","text":"PRESS "},{"color":"#FFFFFF","keybind":"key.sneak"},{"bold":true,"color":"#FFFFFF","text":": 修理支援"}]'
    execute if score $CurrentDurability Temporary matches ..0 run return run scoreboard players reset $CurrentDurability Temporary

# 向きを敵の方へ向ける
    execute facing entity @e[tag=Enemy.Boss,tag=!Uninterferable,distance=..128,limit=1] eyes run tp @s ~ ~ ~ ~ ~
    function asset:object/2088.patriot_launcher/tick/turn_turret

# 次の発射までのカウント
    execute store result score $MissileCooltime Temporary run data get storage asset:context this.MissileCooltime
    execute store result storage asset:context this.MissileCooltime int 1 run scoreboard players remove $MissileCooltime Temporary 1

# 発射時間が来ていた場合ミサイル発射
    execute if score $MissileCooltime Temporary matches 0 run function asset:object/2088.patriot_launcher/tick/missile_launch
    execute if score $MissileCooltime Temporary matches 0 run data modify storage asset:context this.MissileCooltime set from storage asset:context this.MaxMissileCooltime

# reset
    scoreboard players reset $MissileCooltime Temporary
    scoreboard players reset $CurrentDurability Temporary
