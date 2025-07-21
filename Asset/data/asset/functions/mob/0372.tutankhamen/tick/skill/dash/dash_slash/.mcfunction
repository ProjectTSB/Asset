#> asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# ダッシュ開始
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0372.tutankhamen/tick/skill/dash/start

# プレイヤーの方へ誘導する
    execute if score @s General.Mob.Tick matches ..99 run function asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/move

# プレイヤーが前方の範囲にいたらスコアを変える
    execute if score @s General.Mob.Tick matches ..99 at @s positioned ^ ^ ^2 if entity @p[gamemode=!spectator,distance=..4] run scoreboard players set @s General.Mob.Tick 100

# 斬撃の構え
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/slash/windup

# 構えその2
    execute if score @s General.Mob.Tick matches 115 run function asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/slash/windup_2

# そして斬撃のダメージ
    execute if score @s General.Mob.Tick matches 118 run function asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/slash/damage

# 本気時は謎キャンセルでダッシュにチェインする
    # ノーマルモード
        execute unless predicate api:global_vars/difficulty/min/3_blessless if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 140 unless score @s AC.Count.Dash matches 0.. run function asset:mob/0372.tutankhamen/tick/skill/dash/chain_dash
    # ハードモード
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 120 unless score @s AC.Count.Dash matches 0.. run function asset:mob/0372.tutankhamen/tick/skill/dash/chain_dash

# ニュートラルに戻る
    execute if score @s General.Mob.Tick matches 140 as @e[type=item_display,tag=AC.AJLink,distance=..16,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/neutral/tween {to_frame: 0, duration: 5}
    execute if score @s General.Mob.Tick matches 140 run tp @s ~ ~ ~ ~ 0
# ウソ慣性
    execute if score @s General.Mob.Tick matches 100..105 unless function asset:mob/0372.tutankhamen/tick/skill/common/check_collide/forward/1.0 run tp @s ^ ^ ^0.5
    execute if score @s General.Mob.Tick matches 106 unless function asset:mob/0372.tutankhamen/tick/skill/common/check_collide/forward/1.0 run tp @s ^ ^ ^0.3
    execute if score @s General.Mob.Tick matches 107..110 unless function asset:mob/0372.tutankhamen/tick/skill/common/check_collide/forward/1.0 run tp @s ^ ^ ^0.1

# リセット
    execute if score @s General.Mob.Tick matches 140.. run function asset:mob/0372.tutankhamen/tick/skill/reset
