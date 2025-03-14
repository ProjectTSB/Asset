#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/active
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/

# ちょっと上に移動
    execute at @s run tp @s ~ ~0.2 ~ ~ ~-2.5

# アニメーション
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_1_active/tween {to_frame: 4, duration: 1}

# 居合の移動を開始
    execute at @s run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/

# サウンド
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.6
