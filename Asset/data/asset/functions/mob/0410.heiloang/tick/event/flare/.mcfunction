#> asset:mob/0410.heiloang/tick/event/flare/
#
# フレアレイ
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 移動開始
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/5_1_move_start
    # 中心点回転
        execute if score @s BE.EventTimer matches 2 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/util/turn_center_position
# 待機
    # 100 tick
    # その間に中心点の正面方向に移動
        execute if score @s BE.EventTimer matches 60 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
        execute if score @s BE.EventTimer matches 60 at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0
        execute if score @s BE.EventTimer matches 60 at @s run tp @s ^ ^ ^6 ~ 0
# 出現、攻撃
    # アニメーション再生
        execute if score @s BE.EventTimer matches 101 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/8_1_move_flare
    # 設置位置決定
        execute if score @s BE.EventTimer matches 61 at @e[type=marker,tag=BE.CenterPosition] if predicate api:global_vars/difficulty/1_normal run function asset:mob/0410.heiloang/tick/event/flare/set_attack_position
        execute if score @s BE.EventTimer matches 61 at @e[type=marker,tag=BE.CenterPosition] if predicate api:global_vars/difficulty/2_hard rotated ~90 ~ run function asset:mob/0410.heiloang/tick/event/flare/set_attack_position
        execute if score @s BE.EventTimer matches 61 at @e[type=marker,tag=BE.CenterPosition] if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0410.heiloang/tick/event/flare/set_attack_position_hard
    # 演出
        execute if score @s BE.EventTimer matches 172..192 run particle end_rod ~ ~5 ~ 2 2 2 1 30 force
    # 攻撃
        execute if score @s BE.EventTimer matches 110 if predicate api:global_vars/difficulty/max/2_hard positioned as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=random,limit=2] run function asset:mob/0410.heiloang/tick/event/flare/attack
        execute if score @s BE.EventTimer matches 170 if predicate api:global_vars/difficulty/max/2_hard positioned as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=random,limit=2] run function asset:mob/0410.heiloang/tick/event/flare/attack
        execute if score @s BE.EventTimer matches 230 if predicate api:global_vars/difficulty/max/2_hard positioned as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=random,limit=2] run function asset:mob/0410.heiloang/tick/event/flare/attack
        execute if score @s BE.EventTimer matches 110 if predicate api:global_vars/difficulty/min/3_blessless positioned as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=random,limit=2] run function asset:mob/0410.heiloang/tick/event/flare/attack
        execute if score @s BE.EventTimer matches 170 if predicate api:global_vars/difficulty/min/3_blessless positioned as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=random,limit=2] run function asset:mob/0410.heiloang/tick/event/flare/attack
        execute if score @s BE.EventTimer matches 230 if predicate api:global_vars/difficulty/min/3_blessless positioned as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=random,limit=2] run function asset:mob/0410.heiloang/tick/event/flare/attack
        execute if score @s BE.EventTimer matches 110 if predicate api:global_vars/difficulty/min/3_blessless positioned as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition.Hard,sort=random,limit=2] run function asset:mob/0410.heiloang/tick/event/flare/attack_hard
        execute if score @s BE.EventTimer matches 170 if predicate api:global_vars/difficulty/min/3_blessless positioned as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition.Hard,sort=random,limit=2] run function asset:mob/0410.heiloang/tick/event/flare/attack_hard
        execute if score @s BE.EventTimer matches 230 if predicate api:global_vars/difficulty/min/3_blessless positioned as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition.Hard,sort=random,limit=2] run function asset:mob/0410.heiloang/tick/event/flare/attack_hard

# 待機
    execute if score @s BE.EventTimer matches 229 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3
    execute if score @s BE.EventTimer matches 229 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 無敵化
    execute if score @s BE.EventTimer matches 1 run function asset:mob/0410.heiloang/tick/util/start_invulnerable
    execute if score @s BE.EventTimer matches 101 run function asset:mob/0410.heiloang/tick/util/end_invulnerable

# 終了
    execute if score @s BE.EventTimer matches 308.. run function asset:mob/0410.heiloang/tick/event/flare/end
