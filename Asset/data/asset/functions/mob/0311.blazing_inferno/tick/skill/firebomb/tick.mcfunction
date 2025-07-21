#> asset:mob/0311.blazing_inferno/tick/skill/firebomb/tick
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# ハードモードなら謎の加速をかます
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 0 run tag @s add 8N.Turn.HighSpeed

# 攻撃 1
    # アニメ再生
        execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_shoot_1_right/play
    # 攻撃を実行
        execute if score @s General.Mob.Tick matches 10 at @e[type=marker,tag=8N.ModelLocator.RightHand] facing entity @p feet rotated ~90 ~-45 run function asset:mob/0311.blazing_inferno/tick/skill/firebomb/shoot

# 攻撃 2
    # アニメ再生
        execute if score @s General.Mob.Tick matches 20 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_shoot_1_left/play
    # 攻撃を実行
        execute if score @s General.Mob.Tick matches 30 at @e[type=marker,tag=8N.ModelLocator.LeftHand] facing entity @p feet rotated ~-90 ~-45 run function asset:mob/0311.blazing_inferno/tick/skill/firebomb/shoot

# 攻撃 3
    # アニメ再生
        execute if score @s General.Mob.Tick matches 40 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_shoot_2/play
    # 攻撃を実行
        execute if score @s General.Mob.Tick matches 50 at @e[type=marker,tag=8N.ModelLocator.RightHand] facing entity @p feet rotated ~ ~-75 run function asset:mob/0311.blazing_inferno/tick/skill/firebomb/shoot

# 元のアニメに戻る
    execute if score @s General.Mob.Tick matches 60 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/tween {duration:10, to_frame:0}

# リセット
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/0311.blazing_inferno/tick/base_move/reset
