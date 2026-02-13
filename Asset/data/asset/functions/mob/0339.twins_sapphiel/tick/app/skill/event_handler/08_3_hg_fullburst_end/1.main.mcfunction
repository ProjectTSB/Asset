#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_3_hg_fullburst_end/1.main
#
# アニメーションのイベントハンドラ Hgフルバースト・終了
# 全弾まとめて射撃する、終了動作
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：30tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_3_hg_fullburst_end/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..5 positioned ~ ~-0.1 ~ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 5 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9F.AnimationTimer matches 15 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9F.AnimationTimer matches 25 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1

# 終了
    execute if score @s 9F.AnimationTimer matches 31.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_3_hg_fullburst_end/2.end
