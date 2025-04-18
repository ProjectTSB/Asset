#> asset:mob/0410.heiloang/tick/event/move/
#
# 移動攻撃
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 移動開始
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/5_1_move_start
    # 中心点回転
        execute if score @s BE.EventTimer matches 2 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/move/turn
# 待機
    # 100 tick
    # その間に中心点の正面方向に移動
        execute if score @s BE.EventTimer matches 80 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
        execute if score @s BE.EventTimer matches 80 at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0
        execute if score @s BE.EventTimer matches 80 at @s run tp @s ^ ^ ^6 ~ ~
# 出現、攻撃
    # アニメーション再生
        execute if score @s BE.EventTimer matches 151 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/5_2_move
    # 攻撃
        execute if score @s BE.EventTimer matches 194 at @e[type=marker,tag=BE.CenterPosition] positioned ^ ^ ^19.5 rotated ~180 0 run function asset:mob/0410.heiloang/tick/event/move/prediction
        execute if score @s BE.EventTimer matches 224 at @e[type=marker,tag=BE.CenterPosition] positioned ^ ^ ^19.5 rotated ~180 0 run function asset:mob/0410.heiloang/tick/event/move/attack

# 無敵化
    execute if score @s BE.EventTimer matches 1 run function asset:mob/0410.heiloang/tick/util/start_invulnerable
    execute if score @s BE.EventTimer matches 151 run function asset:mob/0410.heiloang/tick/util/end_invulnerable

# 終了
    execute if score @s BE.EventTimer matches 275.. run function asset:mob/0410.heiloang/tick/event/move/end
