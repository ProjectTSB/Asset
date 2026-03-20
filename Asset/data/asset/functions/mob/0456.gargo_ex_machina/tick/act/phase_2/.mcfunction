#> asset:mob/0456.gargo_ex_machina/tick/act/phase_2/
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/

# 最初に戻る
    # execute if score @s CO.Counter matches 38.. run scoreboard players set @s CO.Counter 18

## ブルートフォース：チュートリアル
    # 四辺に移動
        execute if score @s CO.Counter matches ..1 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_line
    # ブルートフォース：チュートリアル
        execute if score @s CO.Counter matches 2 run tag @s add CO.Skill.BluteForce.First
        execute if score @s CO.Counter matches 2 run tag @s add CO.Skill.BluteForce.Pt.Tutorial
    # スーパージャンプ
        execute if score @s CO.Counter matches 3 run scoreboard players set @s CO.PreTimer 500
        execute if score @s CO.Counter matches 3 run tag @s add CO.Skill.SuperJump
# 待機
    execute if score @s CO.Counter matches 4 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 160
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
## ブルートフォース：回転パターン
    # 中央に移動
        execute if score @s CO.Counter matches 10 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_center
    # ブルートフォース：チュートリアル
        execute if score @s CO.Counter matches 11 run tag @s add CO.Skill.BluteForce
        execute if score @s CO.Counter matches 11 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/bluteforce_spin
    # スーパージャンプ
        execute if score @s CO.Counter matches 12 run scoreboard players set @s CO.PreTimer 400
        execute if score @s CO.Counter matches 12 run tag @s add CO.Skill.SuperJump
# 待機
    execute if score @s CO.Counter matches 13 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 160
## モディファイ + ロケットパンチ
    # フィールドモディファイ・ボーダーパターン
        execute if score @s CO.Counter matches 14 as @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] at @s positioned ~ ~-0.499 ~ run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/field_modify_border
        execute if score @s CO.Counter matches 14 run scoreboard players set @s CO.PreTimer 3
        execute if score @s CO.Counter matches 14 run tag @s add CO.Skill.FieldModify
    # ロケットパンチ1回目
        execute if score @s CO.Counter matches 15 as @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] at @s run tp @s ~ ~ ~ ~90 0
        execute if score @s CO.Counter matches 15 run tag @s add CO.Skill.RocketPunch.Alter
        execute if score @s CO.Counter matches 15 run scoreboard players set @s CO.PreTimer 180
        execute if score @s CO.Counter matches 15 run tag @s add CO.Skill.RocketPunch
    # ロケットパンチ2回目
        execute if score @s CO.Counter matches 16 run tag @s add CO.Skill.RocketPunch.AlterInv
        execute if score @s CO.Counter matches 16 run scoreboard players set @s CO.PreTimer 180
        execute if score @s CO.Counter matches 16 run tag @s add CO.Skill.RocketPunch
    # 待機
        execute if score @s CO.Counter matches 17 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 220
    # ロケットパンチ3回目
        execute if score @s CO.Counter matches 18 as @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] at @s run tp @s ~ ~ ~ ~180 0
        execute if score @s CO.Counter matches 18 run scoreboard players set @s CO.PreTimer 180
        execute if score @s CO.Counter matches 18 run tag @s add CO.Skill.RocketPunch
    # 四隅に移動
        execute if score @s CO.Counter matches 19 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_corner
    ## 剣叩きつけ
        execute if score @s CO.Counter matches 20 run tag @s add CO.Skill.SwordAttack
## 薙ぎ払いレーザー
    # 中心に移動
        execute if score @s CO.Counter matches 21 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_center
    # 薙ぎ払いレーザー
        execute if score @s CO.Counter matches 22 run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/half_beam
# 待機
    execute if score @s CO.Counter matches 23 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 200
