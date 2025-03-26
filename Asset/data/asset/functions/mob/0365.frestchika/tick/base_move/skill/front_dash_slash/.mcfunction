#> asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/windup

# 後ろに下がる
    execute if score @s General.Mob.Tick matches 0..5 rotated ~ 0 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide_back run tp @s ^ ^ ^-0.5
    execute if score @s General.Mob.Tick matches 6..10 rotated ~ 0 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide_back run tp @s ^ ^ ^-0.3
    execute if score @s General.Mob.Tick matches 10..15 rotated ~ 0 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide_back run tp @s ^ ^ ^-0.1

    execute if score @s General.Mob.Tick matches 0 run playsound ogg:mob.breeze.idle1 hostile @a ~ ~ ~ 1.5 1.5

# ダッシュ開始
    execute if score @s General.Mob.Tick matches 15 run function asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/start

# プレイヤーの方へ誘導する
    execute if score @s General.Mob.Tick matches 15..30 run function asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/move

# ブレーキかけつつプレイヤーの方を向く
    execute if score @s General.Mob.Tick matches 30..45 facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^ ~ ~

# プレイヤーが前方の範囲にいたらスコアを変える
    execute if score @s General.Mob.Tick matches 15..29 at @s positioned ^ ^ ^2 if entity @p[gamemode=!spectator,distance=..4] run scoreboard players set @s General.Mob.Tick 30

# 斬撃モーション
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_3/tween {to_frame: 0, duration: 1}

# ブースト
    execute at @e[type=marker,tag=A5.ModelLocator.LeftWing,sort=nearest,limit=1] run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..32]
    execute at @e[type=marker,tag=A5.ModelLocator.RightWing,sort=nearest,limit=1] run particle dust_color_transition 0 0.75 1 1 0.3 1 1 ~ ~ ~ 0.1 0.1 0.1 0 2 force @a[distance=..32]

# 斬撃
    execute if score @s General.Mob.Tick matches 30 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 35 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1
    execute if score @s General.Mob.Tick matches 40 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s General.Mob.Tick matches 45 as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/slash

# ウソ慣性
    execute if score @s General.Mob.Tick matches 30..35 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ^ ^ ^0.5
    execute if score @s General.Mob.Tick matches 35..40 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ^ ^ ^0.3
    execute if score @s General.Mob.Tick matches 40..45 unless function asset:mob/0365.frestchika/tick/base_move/common/check_collide run tp @s ^ ^ ^0.1

# リセット
    execute if score @s General.Mob.Tick matches 55.. run function asset:mob/0365.frestchika/tick/base_move/skill/reset
