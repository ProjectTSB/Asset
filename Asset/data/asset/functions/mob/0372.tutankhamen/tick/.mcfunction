#> asset:mob/0372.tutankhamen/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/372/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# AJモデルとの紐づけ
    execute at @s run tag @e[type=item_display,tag=AC.AJ,distance=..16,sort=nearest,limit=1] add AC.AJLink

# モデルを追従
    execute at @s run tp @e[type=item_display,tag=AC.AJLink,distance=..16,sort=nearest,limit=1] ~ ~ ~ ~ ~

# フェイズ移行動作
    execute if entity @s[tag=AC.Moveset.Transition] run function asset:mob/0372.tutankhamen/tick/phase_transition/

# スキル選択 開幕は実行しない
    execute if entity @s[tag=AC.DashUsed,tag=!AC.Moveset.Transition,tag=!AC.InAction,tag=!AC.Opening] if score @s General.Mob.Tick matches 0 run function asset:mob/0372.tutankhamen/tick/skill_select

# ダッシュ選択 開幕は実行しないし、スキル中も使用しない
    execute if entity @s[tag=!AC.InAction,tag=!AC.Moveset.Transition,tag=!AC.Opening] if score @s General.Mob.Tick matches 0 run function asset:mob/0372.tutankhamen/tick/dash_select

# スキル実行
    execute if entity @s[tag=!AC.Moveset.Transition] if score @s General.Mob.Tick matches 0.. run function asset:mob/0372.tutankhamen/tick/skill_branch

# 本気のパーティクル
    execute if entity @s[tag=AC.Health.50Per,tag=!AC.Moveset.Transition] if predicate lib:random_pass_per/50 run particle soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0.02 1 force @a[distance=..64]
    execute if entity @s[tag=AC.Health.50Per,tag=!AC.Moveset.Transition] if predicate lib:random_pass_per/50 run particle dust 0 1 1 1 ~ ~1 ~ 0.3 0.5 0.3 0.02 1 force @a[distance=..64]

# 足元に何もなければ
    execute if block ~ ~-0.2 ~ #lib:no_collision run particle minecraft:enchant ~ ~ ~ 0.4 0 0.4 0 10

# 足元が埋まっている間は上にちょっとずつ登る
    execute unless block ~ ~ ~ #lib:no_collision run tp @s ~ ~0.1 ~

# そこらのプレイヤーより下にいる場合、上昇する
    execute positioned ~-50 ~ ~-50 unless entity @a[dx=99,dy=-50,dz=99] at @s run tp @s ~ ~0.1 ~

# AJモデルとの紐づけ解除
    execute at @s run tag @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] remove AC.AJLink
