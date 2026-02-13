#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_1_lc_shot_jump/1.main
#
# アニメーションのイベントハンドラ Lc射撃・ジャンプ
# 空中に飛び上がる
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：13tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_1_lc_shot_jump/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..8 at @s positioned ^ ^0.8 ^-0.2 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 9..12 at @s positioned ^ ^0.2 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
    execute if score @s 9F.AnimationTimer matches 7 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1

# 終了
    execute if score @s 9F.AnimationTimer matches 14.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_1_lc_shot_jump/2.end
