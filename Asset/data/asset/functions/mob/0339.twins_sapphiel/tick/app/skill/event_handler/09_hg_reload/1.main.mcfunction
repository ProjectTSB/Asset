#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/09_hg_reload/1.main
#
# アニメーションのイベントハンドラ Hgリロード
# ハンドガンのリロードモーション
# リロード中に攻撃を受けると怯む
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：55tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/09_hg_reload/3.play_animation

# 弾数リセット
    execute if score @s 9F.AnimationTimer matches 1 run scoreboard players set @s 9F.BulletCount.Hg 0

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.5
    execute if score @s 9F.AnimationTimer matches 6 run particle block netherite_block ^0.7 ^1.2 ^ 0 0 0 1 1
    execute if score @s 9F.AnimationTimer matches 6 run particle block netherite_block ^-0.7 ^1.2 ^ 0 0 0 1 1
    execute if score @s 9F.AnimationTimer matches 6 run playsound ogg:item.armor.equip_netherite3 hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 14 run playsound disabled_sounds:item.armor.equip_chain hostile @a ~ ~ ~ 1 1.0
    execute if score @s 9F.AnimationTimer matches 22 run playsound ogg:item.armor.equip_netherite3 hostile @a ~ ~ ~ 1 1.8
    execute if score @s 9F.AnimationTimer matches 28 run playsound ogg:item.armor.equip_netherite3 hostile @a ~ ~ ~ 1 1.8
    execute if score @s 9F.AnimationTimer matches 31 run playsound disabled_sounds:item.armor.equip_chain hostile @a ~ ~ ~ 1 1.0
    execute if score @s 9F.AnimationTimer matches 36 run playsound disabled_sounds:item.armor.equip_chain hostile @a ~ ~ ~ 1 1.0
    execute if score @s 9F.AnimationTimer matches 42 run playsound ogg:item.armor.equip_netherite3 hostile @a ~ ~ ~ 1 1.2

# 怯み受け付け
    execute if score @s 9F.AnimationTimer matches 1 run tag @s add 9F.State.IsDamage
    execute if score @s 9F.AnimationTimer matches 56 run tag @s remove 9F.State.IsDamage

# リロード中
    execute if score @s 9F.AnimationTimer matches 1 run tag @s add 9F.State.IsReload
    execute if score @s 9F.AnimationTimer matches 56 run tag @s remove 9F.State.IsReload

# 終了
    execute if score @s 9F.AnimationTimer matches 56.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/09_hg_reload/2.end
