#> asset:mob/0437.lawless_iron_doll/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/437/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# ジャンプブースト付与
    function asset:mob/0437.lawless_iron_doll/tick/give_jump_boost/tick

# Animated Javaモデルを操作する。再帰移動とかで実行座標がズレがちなので、常にat @sしておく
    execute at @s run function asset:mob/0437.lawless_iron_doll/tick/model_operate

# 足元が埋まっていて、上にブロックがないなら上に移動
    execute unless block ~ ~ ~ #lib:no_collision if block ~ ~2.5 ~ #lib:no_collision run tp @s ~ ~0.1 ~

# 頭上にブロックがあって、下にブロックがないなら下に移動
    execute unless block ~ ~2.5 ~ #lib:no_collision if block ~ ~-1 ~ #lib:no_collision run tp @s ~ ~-0.1 ~

# 空中歩行に説得力もたせるパーティクル。ただし一部の動作のときはやらない。
    execute if entity @s[tag=!C5.Skill.SuperSlam,tag=!C5.Skill.Charge] if block ~ ~-0.25 ~ #lib:no_collision run particle minecraft:enchant ~ ~ ~ 0.7 0 0.7 0 30 force @a[distance=..32]

# 動作
    # イントロ
        execute if entity @s[tag=C5.Moveset.Intro] run function asset:mob/0437.lawless_iron_doll/tick/intro/
    # 通常動作
        execute if entity @s[tag=C5.Moveset.BaseMove] run function asset:mob/0437.lawless_iron_doll/tick/base_move/
    # フェイズ移行
        execute if entity @s[tag=C5.Moveset.Transition] run function asset:mob/0437.lawless_iron_doll/tick/phase_transition/

# AJモデルとの紐づけ解除
    execute at @s run tag @e[type=item_display,tag=C5.ModelRoot.Target,distance=..0.01,sort=nearest,limit=1] remove C5.ModelRoot.Target
