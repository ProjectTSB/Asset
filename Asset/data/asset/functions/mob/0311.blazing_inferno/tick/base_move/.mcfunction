#> asset:mob/0311.blazing_inferno/tick/base_move/
#
# ベースムーブ。他のモブの"tick"に当たる部分。
#
# @within function asset:mob/0311.blazing_inferno/tick/

# 予告動作
#    execute if score @s[tag=!8N.InAction] General.Mob.Tick matches 20 if entity @p[distance=..100] run function asset:mob/0311.blazing_inferno/tick/base_move/windup

# プレイヤーが周囲にいたらスキル選択
#    execute if score @s[tag=!8N.InAction] General.Mob.Tick matches 40.. if entity @p[distance=..100] run function asset:mob/0311.blazing_inferno/tick/base_move/skill_select

# 選択したスキル発動
    execute if entity @s[tag=8N.InAction] run function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# マーカーの視線先に自分を置く。"8N.RailMove"タグがあるときのみ実行。
#    execute if entity @s[tag=8N.RailMove] at @e[type=marker,tag=8N.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ^ ^ ^12

# HP50%以下のとき、パーティクルをまとう
    execute if entity @s[tag=8N.Health.50Per] run particle large_smoke ~ ~1 ~ 0.3 0.5 0.3 0.01 1 force @a[distance=..30]

# マーカーを回す。タグによって方向が変わる。
    # 本気前
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.Clockwise,tag=!8N.Health.50Per,tag=!8N.Turn.HighSpeed] at @e[type=marker,tag=8N.Marker.SpawnPoint,sort=nearest,limit=1] facing entity @s feet rotated ~0.5 0 run tp @s ^ ^1 ^15
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.CounterClockwise,tag=!8N.Health.50Per,tag=!8N.Turn.HighSpeed] at @e[type=marker,tag=8N.Marker.SpawnPoint,sort=nearest,limit=1] facing entity @s feet rotated ~-0.5 0 run tp @s ^ ^1 ^15
