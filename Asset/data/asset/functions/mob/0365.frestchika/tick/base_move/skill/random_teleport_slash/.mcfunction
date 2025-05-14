#> asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/active

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# レーザー攻撃
    execute if predicate api:global_vars/difficulty/easy run scoreboard players operation $Interval Temporary %= $4 Const
    execute if predicate api:global_vars/difficulty/min/2_hard run scoreboard players operation $Interval Temporary %= $3 Const
    execute if score @s General.Mob.Tick matches 0..12 if score $Interval Temporary matches 0 run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/
    scoreboard players reset $Interval Temporary

# 最後の一回は必ず近くに出てくる
    execute if score @s General.Mob.Tick matches 15 at @s run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/finisher_teleport/

# ゆっくり向く
    execute if score @s General.Mob.Tick matches 20..60 facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# 構え
    execute if score @s General.Mob.Tick matches 25 run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/windup

# アニメーション
    execute if score @s General.Mob.Tick matches 45 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 50 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1
    execute if score @s General.Mob.Tick matches 55 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1.5
    execute if score @s General.Mob.Tick matches 55 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_2_active/tween {to_frame: 0, duration: 1}

# 斬撃
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/active

# ニュートラルポーズへ
    execute if score @s General.Mob.Tick matches 85 as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/neutral/tween {to_frame: 0, duration: 20}

# リセット
    execute if score @s General.Mob.Tick matches 90.. run function asset:mob/0365.frestchika/tick/base_move/skill/reset
