#> asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/phase2/
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/active

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 最初のレーザー攻撃
    execute if predicate api:global_vars/difficulty/easy if score @s General.Mob.Tick matches 0..8 run scoreboard players operation $Interval Temporary %= $3 Const
    execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 0..8 run scoreboard players operation $Interval Temporary %= $2 Const
    execute if score @s General.Mob.Tick matches 0..8 if score $Interval Temporary matches 0 run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/

# その1
    # まず、近くに出てくる
        execute if score @s General.Mob.Tick matches 10 at @s run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/finisher_teleport/
    # ゆっくり向く
        execute if score @s General.Mob.Tick matches 15..40 facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
    # 構え
        execute if score @s General.Mob.Tick matches 20 run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/phase2/windup_1
        execute if score @s General.Mob.Tick matches 20..40 if block ^ ^ ^1 #asset:mob/0365.frestchika/no_collision run tp @s ^ ^ ^0.05
    # 左手振り
        execute if score @s General.Mob.Tick matches 40 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_5_active/tween {to_frame: 0, duration: 1}
        execute if score @s General.Mob.Tick matches 42 run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/phase2/slash_1

# 再びレーザー攻撃
    execute if score @s General.Mob.Tick matches 50..58 run scoreboard players operation $Interval Temporary %= $2 Const
    execute if score @s General.Mob.Tick matches 50..58 if score $Interval Temporary matches 0 run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/

# その2
    # まず、近くに出てくる
        execute if score @s General.Mob.Tick matches 60 at @s run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/finisher_teleport/
    # ゆっくり向く
        execute if score @s General.Mob.Tick matches 65..75 facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-20 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~
    # 構え
        execute if score @s General.Mob.Tick matches 70 run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/phase2/windup_2
        execute if score @s General.Mob.Tick matches 70..90 if block ^ ^ ^1 #asset:mob/0365.frestchika/no_collision run tp @s ^ ^ ^0.05
    # 右手振り
        execute if score @s General.Mob.Tick matches 90 as @e[type=item_display,tag=A5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:frestchika/animations/attack_slash_2_active/tween {to_frame: 0, duration: 1}
        execute if score @s General.Mob.Tick matches 92 run function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/phase2/slash_2


# リセット
    execute if score @s General.Mob.Tick matches 110.. run function asset:mob/0365.frestchika/tick/base_move/skill/reset
    scoreboard players reset $Interval Temporary
