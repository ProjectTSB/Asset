#> asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_check
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main

# 地面が無い場合、攻撃しない
    execute if block ~ ~-1 ~ #lib:no_collision run return run kill @s

# 攻撃
    function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_thunder

# 終了
    kill @s
