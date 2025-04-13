#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/
#
# スゲー速度の居合
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/active

# 構え
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_1_windup/tween {to_frame: 0, duration: 1}
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
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_1_active/tween {to_frame: 4, duration: 1}

# ニュートラルポーズへ
    execute if score @s General.Mob.Tick matches 50 as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/neutral/tween {to_frame: 0, duration: 10}

# リセット
    execute if score @s General.Mob.Tick matches 50.. run function asset:mob/0365.frestchika/tick/base_move/skill/reset
