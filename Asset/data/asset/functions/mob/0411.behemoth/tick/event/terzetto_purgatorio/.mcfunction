#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
        execute if score @s BF.EventTimer matches 150 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点の後方に移動
        execute if score @s BF.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^ ^-32 ~ 0
# 詠唱
    # アニメーション再生
        execute if score @s BF.EventTimer matches 190 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
        execute if score @s BF.EventTimer matches 210 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting

# ロックオンフレアブレス
    # アニメーション再生
        execute if score @s BF.EventTimer matches 352 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath
    # ターゲット決定
    # 予兆
        execute if score @s BF.EventTimer matches 190 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/set_target
        execute if score @s BF.EventTimer matches 190..362 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.data] run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/prediction_line.m with entity @s data.locators.pos_head

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 400.. run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/end
