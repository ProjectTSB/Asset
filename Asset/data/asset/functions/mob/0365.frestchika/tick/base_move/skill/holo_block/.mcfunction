#> asset:mob/0365.frestchika/tick/base_move/skill/holo_block/
#
# おもむろにブロックを置いてくる
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/active

# 開幕動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0365.frestchika/tick/base_move/skill/holo_block/windup

# パターン発動
    execute if entity @s[tag=A5.HoloBlock.1] if score @s General.Mob.Tick matches 15..25 run function asset:mob/0365.frestchika/tick/base_move/skill/holo_block/pattern/1
    execute if entity @s[tag=A5.HoloBlock.2] align xyz positioned ~0.5 ~ ~0.5 run function asset:mob/0365.frestchika/tick/base_move/skill/holo_block/pattern/2
    execute if entity @s[tag=A5.HoloBlock.3] at @r[gamemode=!spectator,distance=..64] align xyz positioned ~0.5 ~ ~0.5 run function asset:mob/0365.frestchika/tick/base_move/skill/holo_block/pattern/3

# ニュートラルポーズへ
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/neutral/tween {to_frame: 0, duration: 10}

# リセット
    execute if score @s General.Mob.Tick matches 30.. run function asset:mob/0365.frestchika/tick/base_move/skill/reset
