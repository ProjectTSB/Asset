#> asset:mob/0365.frestchika/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/365/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# AJモデルとの紐づけ
    execute at @s run tag @e[type=item_display,tag=A5.ModelRoot,distance=..64,sort=nearest,limit=1] add A5.ModelRoot.Target

# モデルを追従
    execute at @s run tp @e[type=item_display,tag=A5.ModelRoot.Target,distance=..64,sort=nearest,limit=1] ~ ~ ~ ~ 0

# 足元が埋まっていて、上にブロックがないなら上に移動
    execute unless block ~ ~ ~ #asset:mob/0365.frestchika/no_collision if block ~ ~2.5 ~ #asset:mob/0365.frestchika/no_collision run tp @s ~ ~0.1 ~

# 頭上にブロックがあって、下にブロックがないなら下に移動
    execute unless block ~ ~2.5 ~ #asset:mob/0365.frestchika/no_collision if block ~ ~-1 ~ #asset:mob/0365.frestchika/no_collision run tp @s ~ ~-0.1 ~

# そこらのプレイヤーより下にいる場合、上昇する
#    execute positioned ~-50 ~ ~-50 unless entity @a[dx=99,dy=-50,dz=99] at @s[tag=!AC.Opening,tag=!AC.InAction] run tp @s ~ ~0.1 ~

# 動作
    # イントロ
        execute if entity @s[tag=A5.Moveset.Intro] run function asset:mob/0365.frestchika/tick/intro/
    # 通常動作
        execute if entity @s[tag=A5.Moveset.BaseMove] run function asset:mob/0365.frestchika/tick/base_move/
    # フェイズ移行
        execute if entity @s[tag=A5.Moveset.Transition] run function asset:mob/0365.frestchika/tick/phase_transition/

# AJモデルとの紐づけ解除
    execute at @s run tag @e[type=item_display,tag=A5.ModelRoot.Target,distance=..0.01,sort=nearest,limit=1] remove A5.ModelRoot.Target
