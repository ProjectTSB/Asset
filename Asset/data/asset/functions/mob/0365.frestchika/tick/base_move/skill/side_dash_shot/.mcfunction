#> asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/active

# ダッシュ開始
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/start

# プレイヤーの方へ誘導する
    execute if score @s General.Mob.Tick matches ..15 run function asset:mob/0365.frestchika/tick/base_move/skill/side_dash_shot/move

# ブレーキかけつつプレイヤーの方を向く
    execute if score @s General.Mob.Tick matches 15..30 facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^ ~ ~

# ブレーキ
    execute if score @s General.Mob.Tick matches 20 as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/neutral/tween {to_frame: 0, duration: 5}

# ブースト
    execute at @e[type=marker,tag=A5.ModelLocator.LeftWing,sort=nearest,limit=1] run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..32]
    execute at @e[type=marker,tag=A5.ModelLocator.RightWing,sort=nearest,limit=1] run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..32]

# ウソ慣性
    # 左
        execute if score @s[tag=A5.Dash.Left] General.Mob.Tick matches 15..20 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ^0.5 ^ ^
        execute if score @s[tag=A5.Dash.Left] General.Mob.Tick matches 20..25 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ^0.3 ^ ^
        execute if score @s[tag=A5.Dash.Left] General.Mob.Tick matches 25..30 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ^0.1 ^ ^
    # 右
        execute if score @s[tag=A5.Dash.Right] General.Mob.Tick matches 15..20 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ^-0.5 ^ ^
        execute if score @s[tag=A5.Dash.Right] General.Mob.Tick matches 20..25 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ^-0.3 ^ ^
        execute if score @s[tag=A5.Dash.Right] General.Mob.Tick matches 25..30 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ^-0.1 ^ ^

# リセット
    execute if score @s General.Mob.Tick matches 30.. run function asset:mob/0365.frestchika/tick/base_move/skill/reset
