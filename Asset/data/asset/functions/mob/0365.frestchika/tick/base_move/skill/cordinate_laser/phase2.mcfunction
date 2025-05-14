#> asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/phase2
#
# スーパー座標レーザー
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/active

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# アニメーション
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/windup

# 適当なターゲットを狙ってマーカー設置
    execute if score @s General.Mob.Tick matches 20 at @r[gamemode=!spectator,distance=..64] run summon marker ~ ~ ~ {Tags:["A5.Marker.Aim","A5.Marker"]}

# 発動地点への演出
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] positioned ~ ~0.1 ~ run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/shape
    scoreboard players reset $Interval Temporary

# レーザー攻撃！
    # 1
        execute if score @s General.Mob.Tick matches 20 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~ ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 21 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~45 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 22 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~90 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 23 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~135 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 24 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~180 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 25 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~225 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 26 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~270 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 27 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~315 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
    # 2
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 28 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~ ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 29 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~45 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 30 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~90 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 31 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~135 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 32 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~180 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 33 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~225 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 34 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~270 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 35 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~315 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
    # 3、トドメレーザー
        execute if score @s General.Mob.Tick matches 40 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/finisher/alert
        execute if score @s General.Mob.Tick matches 60 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/finisher/visual_laser
        execute if score @s General.Mob.Tick matches 70 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/finisher/
    # 4、再び戻っていく
        execute if score @s General.Mob.Tick matches 80 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~ ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 81 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~45 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 82 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~90 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 83 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~135 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 84 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~180 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 85 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~225 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 86 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~270 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 87 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~315 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
    # 5
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 88 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~ ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 89 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~45 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 90 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~90 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 91 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~135 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 92 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~180 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 93 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~225 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 94 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~270 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 95 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~315 ~ positioned ^ ^ ^8 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
# キル
    execute if score @s General.Mob.Tick matches 95 run kill @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1]

# リセット
    execute if score @s General.Mob.Tick matches 95.. run function asset:mob/0365.frestchika/tick/base_move/skill/reset
