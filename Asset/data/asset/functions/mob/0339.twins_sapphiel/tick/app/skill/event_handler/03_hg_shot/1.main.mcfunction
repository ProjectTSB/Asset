#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/1.main
#
# アニメーションのイベントハンドラ Hg射撃
# やや前進しながら2発射撃する
# 弾が4発以上残っている場合は、側転射撃に移行
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：60tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..20 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..10 at @s positioned ^ ^ ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2

# 攻撃
    execute if score @s 9F.AnimationTimer matches 15 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 20 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9F.AnimationTimer matches 21 positioned ^-0.5 ^1 ^0.3 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=nearest,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot
    execute if score @s 9F.AnimationTimer matches 26 positioned ^ ^1 ^0.8 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=nearest,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot

# 遷移
    execute if score @s 9F.AnimationTimer matches 40 if score @s 9F.BulletCount.Hg matches ..12 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/4.change_to_moveshot

# 終了
    execute if score @s 9F.AnimationTimer matches 61.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/2.end
