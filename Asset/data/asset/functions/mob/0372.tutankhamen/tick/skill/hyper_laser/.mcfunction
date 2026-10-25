#> asset:mob/0372.tutankhamen/tick/skill/hyper_laser/
#
# ハイパーレーザー。「ソウルストリーム」って名前付けたら怒られるかな？
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# 構え開始
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/windup

# 杖振り下ろしたときの演出
    execute if score @s General.Mob.Tick matches 23 run playsound item.trident.throw hostile @a ~ ~3 ~ 2 0.7
    execute if score @s General.Mob.Tick matches 23 at @e[type=marker,tag=AC.ModelLocator.Weapon] run particle crit ~ ~ ~ 0 0 0 0.5 25

# 降りる
    execute if score @s General.Mob.Tick matches 0..20 if block ~ ~-0.1 ~ #lib:no_collision/ if function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/check_ground run tp @s ~ ~-0.1 ~

# プレイヤーの方を向く
    execute if score @s General.Mob.Tick matches 0..20 facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ 0 run tp @s ^ ^ ^ ~ ~

# ビームループ
    execute if score @s General.Mob.Tick matches 26 as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/attack_laser_loop/tween {to_frame:0, duration:1}

# 前方に魔法陣を召喚、体力半減で増える
    execute if score @s General.Mob.Tick matches 20 anchored eyes positioned ^ ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s General.Mob.Tick matches 25 anchored eyes positioned ^7 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s General.Mob.Tick matches 25 anchored eyes positioned ^-7 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 30 anchored eyes positioned ^14 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 30 anchored eyes positioned ^-14 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 35 anchored eyes positioned ^21 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square
    execute if score @s[tag=AC.Health.50Per] General.Mob.Tick matches 35 anchored eyes positioned ^-21 ^-0.5 ^2.5 run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/summon_square

# 発射モーション(32tick)
    execute if score @s General.Mob.Tick matches 55 as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/attack_laser_end/tween {to_frame:0, duration:1}

# 杖解除演出
    execute if score @s General.Mob.Tick matches 55 run playsound item.trident.throw hostile @a ~ ~3 ~ 2 1

# 共通リセット処理
    execute if score @s General.Mob.Tick matches 87 run function asset:mob/0372.tutankhamen/tick/skill/reset
