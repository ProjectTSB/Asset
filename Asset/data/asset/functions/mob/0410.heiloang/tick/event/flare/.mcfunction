#> asset:mob/0410.heiloang/tick/event/flare/
#
# フレア
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 移動開始
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/5_1_move_start
    # 中心点回転
        execute if score @s BE.EventTimer matches 2 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/flare/turn
# 待機
    # 100 tick
    # その間に中心点の正面方向に移動
        execute if score @s BE.EventTimer matches 60 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
        execute if score @s BE.EventTimer matches 60 at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0
# 出現、攻撃
    # アニメーション再生
        execute if score @s BE.EventTimer matches 101 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/8_1_move_flare
    # 設置位置決定
        execute if score @s BE.EventTimer matches 61 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/flare/set_attack_position
    # 演出
        execute if score @s BE.EventTimer matches 172..192 run particle end_rod ~ ~5 ~ 2 2 2 1 30 force
    # 攻撃
        execute if score @s BE.EventTimer matches 110 at @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=random,limit=2] rotated ~0 0 run function asset:mob/0410.heiloang/tick/event/flare/attack
        execute if score @s BE.EventTimer matches 170 at @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=random,limit=2] rotated ~0 0 run function asset:mob/0410.heiloang/tick/event/flare/attack
        execute if score @s BE.EventTimer matches 230 at @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=random,limit=2] rotated ~0 0 run function asset:mob/0410.heiloang/tick/event/flare/attack

# 待機
    execute if score @s BE.EventTimer matches 229 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 終了
    execute if score @s BE.EventTimer matches 308.. run function asset:mob/0410.heiloang/tick/event/flare/end
