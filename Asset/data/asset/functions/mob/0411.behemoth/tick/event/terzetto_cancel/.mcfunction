#> asset:mob/0411.behemoth/tick/event/terzetto_cancel/
#
# 行動キャンセル
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# オブジェクト消去
    execute if score @s BF.EventTimer matches 1 as @e[tag=BF.Object,distance=..160] on passengers run kill @s
    execute if score @s BF.EventTimer matches 1 run kill @e[tag=BF.Object,distance=..160]

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
        execute if score @s BF.EventTimer matches 30 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BF.EventTimer matches 26 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^12.5 ^ ^15.5 ~180 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 70.. run function asset:mob/0411.behemoth/tick/event/terzetto_cancel/end
