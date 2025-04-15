#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/phase2
#
# スンゴい速度の連続居合
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/active

# 1回目
    # 構え
        execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_4_windup/tween {to_frame: 0, duration: 1}
        execute if score @s General.Mob.Tick matches 0 run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/windup
    # ゆっくり向く
        execute if score @s General.Mob.Tick matches ..20 facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
    # ブースト
        execute if score @s General.Mob.Tick matches ..20 at @e[type=marker,tag=A5.ModelLocator.LeftWing,sort=nearest,limit=1] run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..32]
        execute if score @s General.Mob.Tick matches ..20 at @e[type=marker,tag=A5.ModelLocator.RightWing,sort=nearest,limit=1] run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..32]
    # 居合の移動を開始
        execute if score @s General.Mob.Tick matches 30 at @s run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/
    # 振り抜く
        execute if score @s General.Mob.Tick matches 30 at @s run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/active
        execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_4_active/tween {to_frame: 4, duration: 1}

# 2回目
    # ゆっくり向く
        execute if score @s General.Mob.Tick matches 30..40 facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-30 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
    # アニメーション
        execute if score @s General.Mob.Tick matches 35 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_4_windup/tween {to_frame: 10, duration: 1}
    # 居合の移動を開始
        execute if score @s General.Mob.Tick matches 40 at @s run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/
    # 振り抜く
        execute if score @s General.Mob.Tick matches 40 at @s run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/active
        execute if score @s General.Mob.Tick matches 40 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_4_active/tween {to_frame: 4, duration: 1}

# 3回目
    # ゆっくり向く
        execute if score @s General.Mob.Tick matches 50..60 facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
    # アニメーション
        execute if score @s General.Mob.Tick matches 50 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_1_windup/tween {to_frame: 0, duration: 1}
    # 居合の移動を開始
        execute if score @s General.Mob.Tick matches 70 run tag @s add A5.Skill.ChargeSlashThunder
        execute if score @s General.Mob.Tick matches 70 at @s run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/
        execute if score @s General.Mob.Tick matches 70 run tag @s remove A5.Skill.ChargeSlashThunder
    # 振り抜く
        execute if score @s General.Mob.Tick matches 70 at @s run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/active
        execute if score @s General.Mob.Tick matches 70 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_1_active/tween {to_frame: 4, duration: 1}
    # 追撃
        execute if score @s General.Mob.Tick matches 90 at @e[type=marker,tag=A5.Marker.Thunder,distance=..128] run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/final_thunder
        execute if score @s General.Mob.Tick matches 90 run kill @e[type=marker,tag=A5.Marker.Thunder,distance=..128]

# ニュートラルポーズへ
    execute if score @s General.Mob.Tick matches 100 as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/neutral/tween {to_frame: 0, duration: 10}

# リセット
    execute if score @s General.Mob.Tick matches 100.. run function asset:mob/0365.frestchika/tick/base_move/skill/reset
