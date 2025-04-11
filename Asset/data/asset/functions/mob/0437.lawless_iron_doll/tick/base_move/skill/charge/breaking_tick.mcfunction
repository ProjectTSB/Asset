#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/breaking_tick
#
# ブレーキ処理
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick

# ブレーキのアニメ
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/run2_stop/tween {to_frame: 0, duration: 1}

# サウンド
    execute if score @s General.Mob.Tick matches 30 run playsound ogg:mob.breeze.slide4 hostile @a ~ ~ ~ 1 0.5

# なんちゃって慣性
    execute if score @s General.Mob.Tick matches 30..32 run tp @s ^ ^ ^0.7 ~ 0
    execute if score @s General.Mob.Tick matches 33..35 run tp @s ^ ^ ^0.5 ~ 0
    execute if score @s General.Mob.Tick matches 36..37 run tp @s ^ ^ ^0.4 ~ 0
    execute if score @s General.Mob.Tick matches 38..40 run tp @s ^ ^ ^0.3 ~ 0
    execute if score @s General.Mob.Tick matches 41..43 run tp @s ^ ^ ^0.2 ~ 0
    execute if score @s General.Mob.Tick matches 44..45 run tp @s ^ ^ ^0.1 ~ 0

# パーティクル
    execute rotated ~ 0 positioned ^ ^ ^1 run particle crit ~ ~ ~ 0 0 0 0.5 5
