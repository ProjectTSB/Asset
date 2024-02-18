#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/1.main
#
# アニメーションのイベントハンドラ Lc射撃・射撃
# ランチャーを発射する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：35tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/3.play_animation

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1

# 射撃
    execute if score @s 9F.AnimationTimer matches 2 positioned ^ ^1 ^1 facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/5.1.shot

# 終了
    execute if score @s 9F.AnimationTimer matches 36.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/22_3_lc_shot_shot/2.end
