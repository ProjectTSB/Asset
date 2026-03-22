#> asset:mob/0456.gargo_ex_machina/tick/act/phase_2/
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/

# ループ
    # execute if score @s CO.Counter matches 38.. run scoreboard players set @s CO.Counter 10

## ブルートフォース：チュートリアル
    # 四辺に移動
        execute if score @s CO.Counter matches ..1 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_line
    # ブルートフォース・チュートリアル
        execute if score @s CO.Counter matches 2 run tag @s add CO.Skill.BluteForce.First
        execute if score @s CO.Counter matches 2 run tag @s add CO.Skill.BluteForce.Pt.Tutorial
    # スーパージャンプ
        execute if score @s CO.Counter matches 3 run scoreboard players set @s CO.PreTimer 500
        execute if score @s CO.Counter matches 3 run tag @s add CO.Skill.SuperJump
# 待機
    execute if score @s CO.Counter matches 4 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 200
## 剣叩きつけ
    execute if score @s CO.Counter matches 5 run tag @s add CO.Skill.SwordAttack
# 待機
    execute if score @s CO.Counter matches 6 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 80
## 薙ぎ払いレーザー
    # 中心に移動
        execute if score @s CO.Counter matches 7 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_center
    # 薙ぎ払いレーザー
        execute if score @s CO.Counter matches 8 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/half_beam
# 待機
    execute if score @s CO.Counter matches 9 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 80
## 剣叩きつけ + ATTACKドローン
    # 四隅に移動 + ドローン召喚
        execute if score @s CO.Counter matches 10 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/summon_attack_drone_corner
    # 剣叩きつけ
        execute if score @s CO.Counter matches 11 run tag @s add CO.Skill.SwordAttack
# 待機
    execute if score @s CO.Counter matches 12 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 80
## ブルートフォース：回転パターン
    # 中央に移動
        execute if score @s CO.Counter matches 13 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_center
    # ブルートフォース・回転パターン
        execute if score @s CO.Counter matches 14 run tag @s add CO.Skill.BluteForce
        execute if score @s CO.Counter matches 14 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/bluteforce_spin
    # スーパージャンプ
        execute if score @s CO.Counter matches 15 run scoreboard players set @s CO.PreTimer 400
        execute if score @s CO.Counter matches 15 run tag @s add CO.Skill.SuperJump
# 待機
    execute if score @s CO.Counter matches 16 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 200
## 射撃 + PANJANドローン
    # 四辺に移動
        execute if score @s CO.Counter matches 17 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_line
    # 銃変形 + ドローン召喚
        execute if score @s CO.Counter matches 18 run tag @s add CO.Skill.Transform.Shoot
        execute if score @s CO.Counter matches 18 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/summon_panjan_drone_near
    # 射撃
        execute if score @s CO.Counter matches 19 run tag @s add CO.Skill.Shot
# 待機
    execute if score @s CO.Counter matches 20 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 120
## 上空射撃 + YEETERドローン
    # 上空射撃・移動直線範囲パターン
        execute if score @s CO.Counter matches 21 run tag @s add CO.UpperShot.Pt.MoveLine
        execute if score @s CO.Counter matches 21 run tag @s add CO.Skill.UpperShot
    # Yeeter召喚
        execute if score @s CO.Counter matches 21 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/summon_yeeter_drone_corner
# 待機
    execute if score @s CO.Counter matches 22 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 300
## モディファイ + ロケットパンチ
    # 剣変形
        execute if score @s CO.Counter matches 23 run tag @s add CO.Skill.Transform.Sword
    # フィールドモディファイ・ボーダーパターン
        execute if score @s CO.Counter matches 24 as @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] at @s positioned ~ ~-0.499 ~ run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/field_modify_border
        execute if score @s CO.Counter matches 24 run scoreboard players set @s CO.PreTimer 3
        execute if score @s CO.Counter matches 24 run tag @s add CO.Skill.FieldModify
    # ロケットパンチ1回目
        execute if score @s CO.Counter matches 25 as @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] at @s run tp @s ~ ~ ~ ~90 0
        execute if score @s CO.Counter matches 25 run tag @s add CO.Skill.RocketPunch.Alter
        execute if score @s CO.Counter matches 25 run scoreboard players set @s CO.PreTimer 180
        execute if score @s CO.Counter matches 25 run tag @s add CO.Skill.RocketPunch
    # ロケットパンチ2回目
        execute if score @s CO.Counter matches 26 run tag @s add CO.Skill.RocketPunch.AlterInv
        execute if score @s CO.Counter matches 26 run scoreboard players set @s CO.PreTimer 180
        execute if score @s CO.Counter matches 26 run tag @s add CO.Skill.RocketPunch
    # 待機
        execute if score @s CO.Counter matches 27 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 220
    # ロケットパンチ3回目
        execute if score @s CO.Counter matches 28 as @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] at @s run tp @s ~ ~ ~ ~180 0
        execute if score @s CO.Counter matches 28 run scoreboard players set @s CO.PreTimer 180
        execute if score @s CO.Counter matches 28 run tag @s add CO.Skill.RocketPunch
    # 四隅に移動
        execute if score @s CO.Counter matches 29 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_corner
    ## 剣叩きつけ
        execute if score @s CO.Counter matches 30 run tag @s add CO.Skill.SwordAttack
# ## 薙ぎ払いレーザー
#     # 中心に移動
#         execute if score @s CO.Counter matches 21 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_center
#     # 薙ぎ払いレーザー
#         execute if score @s CO.Counter matches 22 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/half_beam
# # 待機
#     execute if score @s CO.Counter matches 23 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 100
# ## ブルートフォース：エクサパターン
#     # ブルートフォース：チュートリアル
#         execute if score @s CO.Counter matches 24 run tag @s add CO.Skill.BluteForce
#         execute if score @s CO.Counter matches 24 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/bluteforce_exa
#     # 銃変形
#         execute if score @s CO.Counter matches 25 run tag @s add CO.Skill.Transform.Shoot
#     # 上空射撃・追尾パターン
#         execute if score @s CO.Counter matches 26 run tag @s add CO.UpperShot.Pt.Target
#         execute if score @s CO.Counter matches 26 run tag @s add CO.Skill.UpperShot
#     # 剣変形
#         execute if score @s CO.Counter matches 27 run tag @s add CO.Skill.Transform.Sword
#     # スーパージャンプ
#         execute if score @s CO.Counter matches 28 run scoreboard players set @s CO.PreTimer 300
#         execute if score @s CO.Counter matches 28 run tag @s add CO.Skill.SuperJump
# # 待機
#     execute if score @s CO.Counter matches 29 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 200
# # 四辺に移動
#     execute if score @s CO.Counter matches 30 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_line
# ## 剣叩きつけ + YEETERドローン
#     execute if score @s CO.Counter matches 31 run tag @s add CO.Skill.SwordAttack
