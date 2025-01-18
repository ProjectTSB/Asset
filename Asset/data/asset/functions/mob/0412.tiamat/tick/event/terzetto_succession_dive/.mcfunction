#> asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/
#
# テルツェット・サクセッション 連続ダイブ
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の右方向に移動
        execute if score @s BG.EventTimer matches 1 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-28 ^-0.5 ^ ~-90 0
        execute if score @s BG.EventTimer matches 1 at @s run tp @e[type=item_display,tag=BG.ModelRoot] ~ ~ ~ ~ 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BG.EventTimer matches 40.. run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/end
