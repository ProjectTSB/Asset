#> asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/
#
# 適当な対象を選んで、囲むレーザー
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

# レーザー攻撃！ ノーマルだと低密度に
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
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 40 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~ ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 41 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~45 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 42 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~90 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 43 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~135 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 44 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~180 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 45 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~225 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 46 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~270 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon
        execute if score @s General.Mob.Tick matches 47 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] rotated ~315 ~ positioned ^ ^ ^5 run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/summon

    # 3、トドメレーザー
        execute if score @s General.Mob.Tick matches 60 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/finisher/alert
        execute if score @s General.Mob.Tick matches 70 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/finisher/visual_laser
        execute if score @s General.Mob.Tick matches 80 at @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1] run function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/finisher/

# キル
    execute if score @s General.Mob.Tick matches 80 run kill @e[type=marker,tag=A5.Marker.Aim,distance=..128,limit=1]

# ニュートラルポーズへ
    execute if score @s General.Mob.Tick matches 80 as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/neutral/tween {to_frame: 0, duration: 10}

# リセット
    execute if score @s General.Mob.Tick matches 80.. run function asset:mob/0365.frestchika/tick/base_move/skill/reset
