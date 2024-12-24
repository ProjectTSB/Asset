#> asset:mob/0372.tutankhamen/tick/skill/charge/
#
# 「チャージ」と言っても力を溜めることではなく、突進のことである
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# バックステップアニメ
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0372.tutankhamen/tick/skill/charge/backstep

# 後ろに下がる
    execute if score @s General.Mob.Tick matches 0..5 run tp @s ^ ^ ^-0.5
    execute if score @s General.Mob.Tick matches 6..10 run tp @s ^ ^ ^-0.3
    execute if score @s General.Mob.Tick matches 11..15 run tp @s ^ ^ ^-0.1

# 突進開始アニメ
    execute if score @s General.Mob.Tick matches 15 run function asset:mob/0372.tutankhamen/tick/skill/charge/start

# 突進
    execute if score @s General.Mob.Tick matches 15..30 run function asset:mob/0372.tutankhamen/tick/skill/charge/move

# ブレーキ
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=AC.AJLink,distance=..16,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/dash_end/tween {to_frame: 0, duration: 5}

# ウソ慣性
    execute if score @s General.Mob.Tick matches 30..40 run tp @s ^ ^ ^0.5
    execute if score @s General.Mob.Tick matches 40..45 run tp @s ^ ^ ^0.3
    execute if score @s General.Mob.Tick matches 45..50 run tp @s ^ ^ ^0.1

# 終わり際のパーティクル
    execute if score @s General.Mob.Tick matches 30..50 run particle dust 0 0.318 0.318 1 ~ ~1 ~ 0.5 0.5 0.5 0 10

# ニュートラルに戻る
    execute if score @s General.Mob.Tick matches 50 as @e[type=item_display,tag=AC.AJLink,distance=..16,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/tween {to_frame: 0, duration: 5}
    execute if score @s General.Mob.Tick matches 50 run tp @s ~ ~ ~ ~ 0

# リセット
    execute if score @s General.Mob.Tick matches 50.. run function asset:mob/0372.tutankhamen/tick/skill/reset
