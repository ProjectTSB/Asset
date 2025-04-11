#> asset:mob/0411.behemoth/tick/event/start/
#
# 暫定的な登場演出
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 出現
    # アニメーション再生
        execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/0_start

# 移動
    execute if score @s BF.EventTimer matches 35..44 run tp @s ~ ~0.05 ~

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 107.. run function asset:mob/0411.behemoth/tick/event/start/end
