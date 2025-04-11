#> asset:mob/0412.tiamat/tick/event/start/
#
# 暫定的な登場演出
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 出現
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/0_start

# 移動
    execute if score @s BG.EventTimer matches 94..103 run tp @s ~ ~0.05 ~

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BG.EventTimer matches 126.. run function asset:mob/0412.tiamat/tick/event/start/end
