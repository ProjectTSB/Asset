#> asset:mob/0372.tutankhamen/tick/skill/dash/charge/side/
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch


# ダッシュ開始
    execute if score @s[tag=AC.Dash.Left] General.Mob.Tick matches 0 run tp @s ~ ~ ~ ~-90 0
    execute if score @s[tag=AC.Dash.Right] General.Mob.Tick matches 0 run tp @s ~ ~ ~ ~90 0
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0372.tutankhamen/tick/skill/dash/charge/side/start

# ヘルス半減時はダッシュしながら弾を撒いてくる
    execute if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 0..15 run function asset:mob/0372.tutankhamen/tick/skill/dash/charge/side/shoot/

# プレイヤーの方へ誘導する
    execute if score @s General.Mob.Tick matches ..15 run function asset:mob/0372.tutankhamen/tick/skill/dash/charge/side/move

# ブレーキ
    execute if score @s General.Mob.Tick matches 15 as @e[type=item_display,tag=AC.AJLink,distance=..16,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/dash_end/tween {to_frame: 0, duration: 5}

# ブレーキかけつつプレイヤーの方を向く
    execute if score @s General.Mob.Tick matches 15..30 facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^ ~ 0

# ウソ慣性
    execute if score @s General.Mob.Tick matches 15..20 run tp @s ^ ^ ^0.5
    execute if score @s General.Mob.Tick matches 20..25 run tp @s ^ ^ ^0.3
    execute if score @s General.Mob.Tick matches 25..30 run tp @s ^ ^ ^0.1

# ニュートラルに戻る
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=AC.AJLink,distance=..16,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/tween {to_frame: 0, duration: 5}
    execute if score @s General.Mob.Tick matches 30 run tp @s ~ ~ ~ ~ 0

# リセット
    execute if score @s General.Mob.Tick matches 30.. run function asset:mob/0372.tutankhamen/tick/skill/reset
