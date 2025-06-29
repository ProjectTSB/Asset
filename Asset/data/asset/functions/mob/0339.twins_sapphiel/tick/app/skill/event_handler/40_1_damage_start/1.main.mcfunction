#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_1_damage_start/1.main
#
# アニメーションのイベントハンドラ 怯み・開始
# 後ろに吹っ飛ぶ
# ルビィに激突した場合、お互い気絶する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：20tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_1_damage_start/3.play_animation

# Rootに通知
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_1_damage_start/4.notify

# 移動
    execute if score @s 9F.AnimationTimer matches 1..12 at @s if entity @e[type=marker,tag=9E.Marker.SpawnPoint,distance=..23.5] positioned ^ ^ ^-0.5 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 13..18 at @s if entity @e[type=marker,tag=9E.Marker.SpawnPoint,distance=..23.5] positioned ^ ^ ^-0.3 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 19..21 at @s if entity @e[type=marker,tag=9E.Marker.SpawnPoint,distance=..23.5] positioned ^ ^ ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 1..21 at @s if entity @e[type=marker,tag=9E.Marker.SpawnPoint,distance=..23.5] positioned ^ ^-0.1 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 状態更新
    execute if score @s 9F.AnimationTimer matches 1 run tag @s remove 9F.State.IsReload

# 終了
    execute if score @s 9F.AnimationTimer matches 21.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_1_damage_start/2.end
