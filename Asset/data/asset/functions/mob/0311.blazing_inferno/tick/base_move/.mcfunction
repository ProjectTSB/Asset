#> asset:mob/0311.blazing_inferno/tick/base_move/
#
# ベースムーブ。他のモブの"tick"に当たる部分。
#
# @within function asset:mob/0311.blazing_inferno/tick/

# 予告動作
    execute if score @s[tag=!8N.InAction] General.Mob.Tick matches 20 if entity @p[gamemode=!spectator,distance=..100] run function asset:mob/0311.blazing_inferno/tick/base_move/windup

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!8N.InAction] General.Mob.Tick matches 40.. if entity @p[gamemode=!spectator,distance=..64] run function asset:mob/0311.blazing_inferno/tick/base_move/skill_select/

# 選択したスキル発動
    execute if entity @s[tag=8N.InAction] run function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# HP50%以下のとき、パーティクルをまとう。ただし無敵の時は見えない。
    execute if entity @s[tag=8N.Health.50Per,tag=!Uninterferable] run particle trial_spawner_detection ~ ~1.5 ~ 0.3 0.5 0.3 0 2 force @a[distance=..32]
    execute if entity @s[tag=8N.Health.50Per,tag=!Uninterferable] if predicate lib:random_pass_per/25 run particle flame ~ ~1.5 ~ 0.3 0.5 0.3 0.01 1 force @a[distance=..32]

# ハードモード時、本気になると、あろうことかレーザー攻撃が定期的にオートで発動する。
# ただし、見栄えと画面のごちゃつきを考慮して、同じレーザーが降ってくるスラム攻撃のときは止まる
    execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=8N.Health.50Per,tag=!8N.Skill.GroundSlam] run function asset:mob/0311.blazing_inferno/tick/base_move/passive_laser/

# マーカーを中心に回る
    # 本気前
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.Clockwise,tag=!8N.Health.50Per,tag=!8N.Turn.HighSpeed] at @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64,sort=nearest,limit=1] facing entity @s feet rotated ~0.5 0 run tp @s ^ ^1 ^15
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.CounterClockwise,tag=!8N.Health.50Per,tag=!8N.Turn.HighSpeed] at @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64,sort=nearest,limit=1] facing entity @s feet rotated ~-0.5 0 run tp @s ^ ^1 ^15
    # 本気後
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.Clockwise,tag=8N.Health.50Per,tag=!8N.Turn.HighSpeed] at @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64,sort=nearest,limit=1] facing entity @s feet rotated ~0.7 0 run tp @s ^ ^1 ^15
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.CounterClockwise,tag=8N.Health.50Per,tag=!8N.Turn.HighSpeed] at @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64,sort=nearest,limit=1] facing entity @s feet rotated ~-0.7 0 run tp @s ^ ^1 ^15
    # ハイスピード回転
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.Clockwise,tag=8N.Turn.HighSpeed] at @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64,sort=nearest,limit=1] facing entity @s feet rotated ~2 0 run tp @s ^ ^1 ^15
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.CounterClockwise,tag=8N.Turn.HighSpeed] at @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64,sort=nearest,limit=1] facing entity @s feet rotated ~-2 0 run tp @s ^ ^1 ^15
