#> asset:mob/0456.gargo_ex_machina/tick/act/phase_1/
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/

# 最初に戻る
    execute if score @s CO.Counter matches 14.. run scoreboard players set @s CO.Counter 1

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

# 変形
    execute if score @s CO.Counter matches 9 run tag @s add CO.Skill.Transform.Shoot

# プレイヤー狙い弾
    execute if score @s CO.Counter matches 10 run tag @s add CO.Skill.Shot

# 待機
    execute if score @s CO.Counter matches 11 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleTimer 40

# 上空射撃
    execute if score @s CO.Counter matches 12 run tag @s add CO.Skill.UpperShot

# 変形
    execute if score @s CO.Counter matches 13 run tag @s add CO.Skill.Transform.Sword
