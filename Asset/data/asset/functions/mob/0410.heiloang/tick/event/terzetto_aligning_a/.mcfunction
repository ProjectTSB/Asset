#> asset:mob/0410.heiloang/tick/event/terzetto_aligning_a/
#
# テルツェット・アライニング 外周先パターン
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_0_flymove_start
    # 攻撃
        function asset:mob/0410.heiloang/tick/event/terzetto_aligning_a/attack_main

# 終了
    execute if score @s BE.EventTimer matches 400.. run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_a/end
