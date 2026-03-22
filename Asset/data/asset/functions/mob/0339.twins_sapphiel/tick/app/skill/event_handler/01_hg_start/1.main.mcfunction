#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/01_hg_start/1.main
#
# アニメーションのイベントハンドラ Hg召喚
# ハンドガン装備モーション
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：25tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/01_hg_start/3.play_animation

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9F.AnimationTimer matches 5 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9F.AnimationTimer matches 10 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1

# 状態更新
    execute if score @s 9F.AnimationTimer matches 1 run tag @s add 9F.State.Weapon.Hg

# 終了
    execute if score @s 9F.AnimationTimer matches 26.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/01_hg_start/2.end
