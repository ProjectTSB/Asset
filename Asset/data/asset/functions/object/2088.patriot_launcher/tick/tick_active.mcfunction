#> asset:object/2088.patriot_launcher/tick/tick_active
#
#
#
# @within function asset:object/2088.patriot_launcher/tick/

#> prv
# @private
    #declare score_holder $MissileCooltime
    #declare score_holder $ReloadStartTime
    #declare score_holder $ReloadEndTime
    #declare score_holder $MaxMissileCooltime
    #declare score_holder $TurretResetStartTime
    #declare score_holder $TurretResetEndTime

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
    execute if score $CurrentDurability Temporary matches ..0 on passengers if entity @s[tag=PatriotLauncherRoot] run function animated_java:patriot_launcher/animations/destroy/tween {to_frame: 0, duration: 1}
    execute if score $CurrentDurability Temporary matches ..0 on passengers if entity @s[tag=PatriotLauncherRoot] run function animated_java:patriot_launcher/variants/destroyed/apply
    execute if score $CurrentDurability Temporary matches ..0 run return run scoreboard players reset $CurrentDurability Temporary

# 生存している場合のtick処理
    # 各種実行時間取得
        execute store result score $MissileCooltime Temporary run data get storage asset:context this.MissileCooltime
        execute store result score $ReloadStartTime Temporary run data get storage asset:context this.ReloadStartTime
        execute store result score $ReloadEndTime Temporary run data get storage asset:context this.ReloadEndTime
        execute store result score $MaxMissileCooltime Temporary run data get storage asset:context this.MaxMissileCooltime
        execute store result score $TurretResetStartTime Temporary run data get storage asset:context this.TurretResetStartTime
        execute store result score $TurretResetEndTime Temporary run data get storage asset:context this.TurretResetEndTime

    # 発射直後に砲塔位置をリセット
        execute if score $MissileCooltime Temporary = $TurretResetStartTime Temporary on passengers if entity @s[tag=PatriotLauncherRoot] run function animated_java:patriot_launcher/animations/rotation_no_missile/tween {duration:5, to_frame:0}
        execute if score $MissileCooltime Temporary = $TurretResetEndTime Temporary on passengers if entity @s[tag=PatriotLauncherRoot] run function animated_java:patriot_launcher/animations/rotation_no_missile/stop

    # リロード開始時間になったらリロードモーション
        execute if score $MissileCooltime Temporary = $ReloadStartTime Temporary on passengers if entity @s[tag=PatriotLauncherRoot] run function animated_java:patriot_launcher/animations/reload/play

    # 向きを敵の方へ向ける
        execute if score $MissileCooltime Temporary < $ReloadEndTime Temporary facing entity @e[tag=Enemy.Boss,tag=!Uninterferable,distance=..128,limit=1] eyes run tp @s ~ ~ ~ ~ ~
        execute if score $MissileCooltime Temporary < $ReloadEndTime Temporary run function asset:object/2088.patriot_launcher/tick/turn_turret

    # 次の発射までのカウント
        execute store result storage asset:context this.MissileCooltime int 1 run scoreboard players remove $MissileCooltime Temporary 1

    # 発射時間が来ていた場合ミサイル発射
        execute if score $MissileCooltime Temporary matches 0 run function asset:object/2088.patriot_launcher/tick/missile_launch
        execute if score $MissileCooltime Temporary matches 0 run data modify storage asset:context this.MissileCooltime set from storage asset:context this.MaxMissileCooltime

# reset
    scoreboard players reset $MissileCooltime Temporary
    scoreboard players reset $CurrentDurability Temporary
    scoreboard players reset $ReloadStartTime Temporary
    scoreboard players reset $ReloadEndTime Temporary
    scoreboard players reset $TurretResetStartTime Temporary
    scoreboard players reset $TurretResetEndTime Temporary
    scoreboard players reset $MaxMissileCooltime Temporary
