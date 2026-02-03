#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_3_kt_damage_spear/1.main
#
# アニメーションのイベントハンドラ Kt移動突き・怯み
# 移動突きの怯みモーション
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：45tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_3_kt_damage_spear/3.play_animation

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.hoglin.step hostile @a ~ ~ ~ 2 0.5
    execute if score @s 9G.AnimationTimer matches 1 run playsound block.chain.place hostile @a ~ ~ ~ 2 1.5
    execute if score @s 9G.AnimationTimer matches 20 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9G.AnimationTimer matches 25 run playsound item.axe.wax_off hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 25 run playsound item.axe.wax_off hostile @a ~ ~ ~ 2 1.4
    execute if score @s 9G.AnimationTimer matches 1..3 at @s positioned ^ ^-0.1 ^ run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 1..3 at @s positioned ^ ^ ^0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 25..33 at @s positioned ^ ^0.04 ^-0.3 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 34..40 at @s positioned ^ ^ ^-0.1 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 怯み受け付け
    execute if score @s 9G.AnimationTimer matches 5 run tag @s add 9G.State.IsDamage
    execute if score @s 9G.AnimationTimer matches 35 run tag @s remove 9G.State.IsDamage

# 終了
    execute if score @s 9G.AnimationTimer matches 46.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_3_kt_damage_spear/2.end
