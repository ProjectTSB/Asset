#> asset:mob/0412.tiamat/tick/event/darkbreath/
#
# ダークブレス
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1
# 詠唱
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_0_cast_start
        execute if score @s BG.EventTimer matches 20 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_1_casting
    # ターゲットを向く
        execute if score @s BG.EventTimer matches 1..100 run function asset:mob/0412.tiamat/tick/util/rotate_to_target
    # 口元に氷の予兆
        execute if score @s BG.EventTimer matches 1..110 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] on passengers if entity @s[tag=aj.data] run function asset:mob/0412.tiamat/tick/event/darkbreath/prediction_ice.m with entity @s data.locators.pos_head

# 出現
    # アニメーション再生
        execute if score @s BG.EventTimer matches 100 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/4_breath

# 演出
    execute if score @s BG.EventTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
    execute if score @s BG.EventTimer matches 100 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
    execute if score @s BG.EventTimer matches 146 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BG.EventTimer matches 156.. run function asset:mob/0412.tiamat/tick/event/darkbreath/end
