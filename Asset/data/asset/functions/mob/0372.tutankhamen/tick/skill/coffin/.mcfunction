#> asset:mob/0372.tutankhamen/tick/skill/coffin/
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill_branch

# アニメ再生
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/rod_ground/tween {to_frame:0 ,duration:5}

# 攻撃前の演出
    execute if score @s General.Mob.Tick matches 10..20 run particle dust 1 1 0 2 ~ ~2.5 ~ 1 0 1 0 5
    execute if score @s General.Mob.Tick matches 10 run playsound item.trident.riptide_1 hostile @a ~ ~2.5 ~ 2 0.8
    execute if score @s General.Mob.Tick matches 15 run playsound item.trident.riptide_1 hostile @a ~ ~2.5 ~ 2 1.0
    execute if score @s General.Mob.Tick matches 20 run playsound item.trident.riptide_1 hostile @a ~ ~2.5 ~ 2 1.2

# 攻撃開始の演出
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/0372.tutankhamen/tick/skill/coffin/vfx_start

# 棺召喚
# 難易度比例で召喚数を変える
    execute if entity @s[scores={General.Mob.Tick=30}] at @e[type=marker,tag=AC.SpawnMarker,distance=..100] run function asset:mob/0372.tutankhamen/tick/skill/coffin/summon
    execute if entity @s[scores={General.Mob.Tick=38}] if predicate api:global_vars/difficulty/min/normal at @e[type=marker,tag=AC.SpawnMarker,distance=..100] run function asset:mob/0372.tutankhamen/tick/skill/coffin/summon
    execute if entity @s[scores={General.Mob.Tick=46}] if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=AC.SpawnMarker,distance=..100] run function asset:mob/0372.tutankhamen/tick/skill/coffin/summon

# アニメ再生
    execute if score @s General.Mob.Tick matches 60 as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/rod_ground_end/tween {to_frame:0 ,duration:1}

# 攻撃後の演出
    execute if score @s General.Mob.Tick matches 64 run playsound item.trident.riptide_1 hostile @a ~ ~3 ~ 2 1.2
    execute if score @s General.Mob.Tick matches 69 run playsound item.trident.riptide_1 hostile @a ~ ~3 ~ 2 1.0
    execute if score @s General.Mob.Tick matches 74 run playsound item.trident.riptide_1 hostile @a ~ ~3 ~ 2 0.8

# 共通リセット処理
    execute if score @s General.Mob.Tick matches 90 run function asset:mob/0372.tutankhamen/tick/skill/reset
