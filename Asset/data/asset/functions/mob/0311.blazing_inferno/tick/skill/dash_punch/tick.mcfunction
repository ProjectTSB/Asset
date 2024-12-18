#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/tick
#
# ダッシュパンチ
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# パンチのかまえ
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/windup

# パンチのアニメ再生
    execute if score @s General.Mob.Tick matches 50 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_punch_1_right/tween {duration:1,to_frame:0}

# 殴る
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/active

# ダッシュパンチ移動
    execute if score @s General.Mob.Tick matches 60..80 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/move_stacked

# ブロックに触れたら強制停止
    execute if score @s General.Mob.Tick matches 60..80 at @s unless block ^ ^ ^1 #lib:no_collision run scoreboard players set @s General.Mob.Tick 80
    execute if score @s General.Mob.Tick matches 60..80 at @s unless block ^ ^ ^2 #lib:no_collision run scoreboard players set @s General.Mob.Tick 80

# ダッシュ終了
    # アニメ
        execute if score @s General.Mob.Tick matches 80 as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_punch_1_end/tween {duration:5,to_frame:0}
    # 爆発1
        execute if score @s General.Mob.Tick matches 80 anchored eyes rotated ~ 0 positioned ^ ^-1 ^3 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/explosion
    # 爆発2
        execute if score @s General.Mob.Tick matches 85 anchored eyes rotated ~ 0 positioned ^ ^-1 ^6 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/explosion
    # 爆発3
        execute if score @s General.Mob.Tick matches 90 anchored eyes rotated ~ 0 positioned ^ ^-1 ^9 run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/explosion

# 待機アニメを再生
    execute if score @s General.Mob.Tick matches 90 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/play

# 元の地点に戻る
    execute if score @s General.Mob.Tick matches 120 at @s run function asset:mob/0311.blazing_inferno/tick/base_move/return_to_rail

# リセット
    execute if score @s General.Mob.Tick matches 160 run function asset:mob/0311.blazing_inferno/tick/base_move/reset
