#> asset:mob/0372.tutankhamen/tick/skill/hyper_laser/
#
# ハイパーレーザー
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# 構え開始
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/windup

# プレイヤーの方を向く
    execute if score @s General.Mob.Tick matches 0..20 facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ 0 run tp @s ^ ^ ^ ~ ~

# ビームループ
    execute if score @s General.Mob.Tick matches 26 as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/attack_laser_loop/tween {to_frame:0, duration:1}

# 前方に魔法陣を召喚
    execute if score @s General.Mob.Tick matches 20 anchored eyes positioned ^ ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s General.Mob.Tick matches 25 anchored eyes positioned ^7 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s General.Mob.Tick matches 25 anchored eyes positioned ^-7 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 30 anchored eyes positioned ^14 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 30 anchored eyes positioned ^-14 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 35 anchored eyes positioned ^21 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 35 anchored eyes positioned ^-21 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square

# 発射モーション(32tick)
    execute if entity @s[scores={General.Mob.Tick=55}] as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/attack_laser_end/tween {to_frame:0, duration:1}

# 共通リセット処理
    execute if entity @s[scores={General.Mob.Tick=87..}] run function asset:mob/0372.tutankhamen/tick/skill/reset
