#> asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/tick
#
# 三連火の玉
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# ハードモードなら謎の加速をかます
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 20 run tag @s add 8N.Turn.HighSpeed

# 攻撃
    # アニメ再生
        execute if score @s General.Mob.Tick matches 10 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_shoot_1_right/play
    # 攻撃を実行
        execute if score @s General.Mob.Tick matches 20 at @e[type=marker,tag=8N.ModelLocator.RightHand] facing entity @p eyes run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/single

    # アニメ再生
        execute if score @s General.Mob.Tick matches 20 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_shoot_1_left/tween {duration:2, to_frame:5}
    # 攻撃を実行
        execute if score @s General.Mob.Tick matches 25 at @e[type=marker,tag=8N.ModelLocator.RightHand] facing entity @p eyes run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/single

    # アニメ再生
        execute if score @s General.Mob.Tick matches 25 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_shoot_1_right/tween {duration:2, to_frame:5}
    # 攻撃を実行
        execute if score @s General.Mob.Tick matches 30 at @e[type=marker,tag=8N.ModelLocator.RightHand] facing entity @p eyes run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/single

    # アニメ再生
        execute if score @s General.Mob.Tick matches 35 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_shoot_1_right/tween {duration:2, to_frame:5}
    # 攻撃を実行
        execute if score @s General.Mob.Tick matches 35 at @e[type=marker,tag=8N.ModelLocator.RightHand] facing entity @p eyes run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/single

    # フィニッシュ、拡散弾
        # 回転を止める
            execute if score @s General.Mob.Tick matches 40 run tag @s remove 8N.RailMove
        # アニメ再生
            execute if score @s General.Mob.Tick matches 40 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_shoot_2/tween {duration:1, to_frame:0}
        # 攻撃を実行
            execute unless predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 50 run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/vfx_heavy
            execute unless predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 50 run scoreboard players set @s 8N.AttackAmount 3
            execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 50 run scoreboard players set @s 8N.AttackAmount 5
            execute if score @s General.Mob.Tick matches 50 at @e[type=marker,tag=8N.ModelLocator.RightHand] facing entity @p eyes run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/shoot/any

# 元のアニメに戻る
    execute if score @s General.Mob.Tick matches 60 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/tween {duration:10, to_frame:0}

# 回転を再開
    execute if score @s General.Mob.Tick matches 90 run tag @s add 8N.RailMove

# リセット
    execute if score @s General.Mob.Tick matches 90 run function asset:mob/0311.blazing_inferno/tick/base_move/reset
