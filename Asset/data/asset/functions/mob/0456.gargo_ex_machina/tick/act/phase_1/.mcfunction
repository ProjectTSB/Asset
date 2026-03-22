#> asset:mob/0456.gargo_ex_machina/tick/act/phase_1/
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/

# 最初に戻る
    execute if score @s CO.Counter matches 38.. run scoreboard players set @s CO.Counter 18

# 四隅に移動
    execute if score @s CO.Counter matches ..1 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_1/move_to_corner
# 剣叩きつけ
    execute if score @s CO.Counter matches 2 run tag @s add CO.Skill.SwordAttack
# 待機
    execute if score @s CO.Counter matches 3 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 80
# ロケットパンチ
    execute if score @s CO.Counter matches 4 run scoreboard players set @s CO.PreTimer 140
    execute if score @s CO.Counter matches 4 run tag @s add CO.Skill.RocketPunch
# スーパージャンプ
    execute if score @s CO.Counter matches 5 run scoreboard players set @s CO.PreTimer 150
    execute if score @s CO.Counter matches 5 run tag @s add CO.Skill.SuperJump
# 中心に移動
    execute if score @s CO.Counter matches 6 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_1/move_to_center
# 薙ぎ払いレーザー
    execute if score @s CO.Counter matches 7 run tag @s add CO.Skill.HalfBeam
# 待機
    execute if score @s CO.Counter matches 8 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 80
# 銃変形
    execute if score @s CO.Counter matches 9 run tag @s add CO.Skill.Transform.Shoot
# プレイヤー狙い弾
    execute if score @s CO.Counter matches 10 run tag @s add CO.Skill.Shot
# 待機
    execute if score @s CO.Counter matches 11 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 40
# 上空射撃・ランダムパターン
    execute if score @s CO.Counter matches 12 run tag @s add CO.UpperShot.Pt.Random
    execute if score @s CO.Counter matches 12 run tag @s add CO.Skill.UpperShot
# 待機
    execute if score @s CO.Counter matches 13 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 60
# 剣変形
    execute if score @s CO.Counter matches 14 run tag @s add CO.Skill.Transform.Sword
# フィールドモディファイ
    execute if score @s CO.Counter matches 15 run scoreboard players set @s CO.PreTimer 2
    execute if score @s CO.Counter matches 15 run tag @s add CO.Skill.FieldModify
# 中央にスーパージャンプ
    execute if score @s CO.Counter matches 16 run scoreboard players set @s CO.PreTimer 520
    execute if score @s CO.Counter matches 16 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] run summon area_effect_cloud ^ ^ ^ {Tags:["CO.Aec.Destination"],Duration:80}
    execute if score @s CO.Counter matches 16 run tag @s add CO.Skill.SuperJump
# 待機
    execute if score @s CO.Counter matches 17 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 100

# 以下ループ
## ロケットパンチ + 剣
    # ロケットパンチ
        execute if score @s CO.Counter matches 18 run scoreboard players set @s CO.PreTimer 140
        execute if score @s CO.Counter matches 18 run tag @s add CO.Skill.RocketPunch
    # 四隅に移動
        execute if score @s CO.Counter matches 19 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_1/move_to_corner
    # 剣叩きつけ
        execute if score @s CO.Counter matches 20 run tag @s add CO.Skill.SwordAttack
# 待機
    execute if score @s CO.Counter matches 21 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 80
## 上空射撃 + 通常射撃
    # 中心に移動
        execute if score @s CO.Counter matches 22 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_1/move_to_center
    # 銃変形
        execute if score @s CO.Counter matches 23 run tag @s add CO.Skill.Transform.Shoot
    # 上空射撃・ランダムパターン
        execute if score @s CO.Counter matches 12 run tag @s add CO.UpperShot.Pt.Random
        execute if score @s CO.Counter matches 24 run tag @s add CO.Skill.UpperShot
    # プレイヤー狙い弾
        execute if score @s CO.Counter matches 25 run tag @s add CO.Skill.Shot
# 待機
    execute if score @s CO.Counter matches 26 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 120
## 交差ロケットパンチ
    # 剣変形
        execute if score @s CO.Counter matches 27 run tag @s add CO.Skill.Transform.Sword
    # ロケットパンチ1回目
        execute if score @s CO.Counter matches 28 run tag @s add CO.Skill.RocketPunch.Cross
        execute if score @s CO.Counter matches 28 run scoreboard players set @s CO.PreTimer 180
        execute if score @s CO.Counter matches 28 run tag @s add CO.Skill.RocketPunch
    # 待機
        execute if score @s CO.Counter matches 29 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 40
    # ロケットパンチ2回目
        execute if score @s CO.Counter matches 30 as @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] at @s run tp @s ~ ~ ~ ~180 0
        execute if score @s CO.Counter matches 30 run tag @s add CO.Skill.RocketPunch.Cross
        execute if score @s CO.Counter matches 30 run scoreboard players set @s CO.PreTimer 280
        execute if score @s CO.Counter matches 30 run tag @s add CO.Skill.RocketPunch
    # スーパージャンプ
        execute if score @s CO.Counter matches 31 run scoreboard players set @s CO.PreTimer 240
        execute if score @s CO.Counter matches 31 run tag @s add CO.Skill.SuperJump
# 待機
    execute if score @s CO.Counter matches 32 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 120
# 中心に移動
    execute if score @s CO.Counter matches 33 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_1/move_to_center
## 薙ぎ払いレーザー
    execute if score @s CO.Counter matches 34 run tag @s add CO.Skill.HalfBeam
## モディファイ + 連続ジャンプ
    # フィールドモディファイ・四分割パターン
        execute if score @s CO.Counter matches 35 as @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] at @s positioned ~ ~-0.499 ~ rotated 0 0 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_1/field_modify_square
        execute if score @s CO.Counter matches 35 run scoreboard players set @s CO.PreTimer 2
        execute if score @s CO.Counter matches 35 run tag @s add CO.Skill.FieldModify
    # 連続スーパージャンプ
        execute if score @s CO.Counter matches 36 run scoreboard players set @s CO.JumpCount 4
        execute if score @s CO.Counter matches 36 run scoreboard players set @s CO.PreTimer 40
        execute if score @s CO.Counter matches 36 run tag @s add CO.Skill.SuperJump
# 待機
    execute if score @s CO.Counter matches 37 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 200
