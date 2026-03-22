#> asset:mob/0456.gargo_ex_machina/tick/event/change_head/
#
# 後半戦移行
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# アニメーション再生
    execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/change_head_start/tween {duration:1, to_frame: 1}
    execute if score @s CO.EventTimer matches 200 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/change_head/tween {duration:1, to_frame: 1}
    
# 演出
    execute if score @s CO.EventTimer matches 1 run playsound entity.item.break hostile @a ~ ~ ~ 3 0.5
    execute if score @s CO.EventTimer matches 1 run playsound entity.item.break hostile @a ~ ~ ~ 3 0.7
    execute if score @s CO.EventTimer matches 2 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s CO.EventTimer matches 7 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s CO.EventTimer matches 12 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s CO.EventTimer matches 17 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s CO.EventTimer matches 22 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s CO.EventTimer matches 27 positioned ~ ~30 ~ run playsound entity.generic.explode hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s CO.EventTimer matches 1..30 run particle explosion ~ ~20 ~ 4 7 4 0 3 
    execute if score @s CO.EventTimer matches 20 run playsound block.beacon.deactivate hostile @a ~ ~ ~ 4 1.3
    execute if score @s CO.EventTimer matches 20 run playsound block.beacon.deactivate hostile @a ~ ~ ~ 4 1.1
    execute if score @s CO.EventTimer matches 201 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    execute if score @s CO.EventTimer matches 215 run playsound block.beacon.power_select hostile @a ~ ~ ~ 4 1.5
    execute if score @s CO.EventTimer matches 215 run playsound block.beacon.power_select hostile @a ~ ~ ~ 4 1.7
    execute if score @s CO.EventTimer matches 244 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    execute if score @s CO.EventTimer matches 295 run playsound block.end_portal_frame.fill hostile @a ~ ~ ~ 4 1.0
    execute if score @s CO.EventTimer matches 295 run playsound block.end_portal_frame.fill hostile @a ~ ~ ~ 4 0.8
    # 画面エフェクト
        execute if score @s CO.EventTimer matches 324 run title @a[distance=..160] times 3 0 5
        execute if score @s CO.EventTimer matches 324 run title @a[distance=..160] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}
    execute if score @s CO.EventTimer matches 325 run playsound entity.wither.spawn hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s CO.EventTimer matches 325 run playsound minecraft:block.end_portal.spawn hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s CO.EventTimer matches 325 run playsound item.trident.thunder hostile @a[distance=..80] ~ ~ ~ 0.4 0.6 0.4
    # モデル変更
        execute if score @s CO.EventTimer matches 295 run function asset:mob/0456.gargo_ex_machina/tick/util/change_model
        execute if score @s CO.EventTimer matches 328 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/variants/blue/apply

# ボス名変更
    execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m {Name:"絡繰仕掛の石像",Visible:"false"}
    execute if score @s CO.EventTimer matches 325 run function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m {Name:"絡繰仕掛の石像",Visible:"true"}

# 無敵化
    execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/start_invulnerable
    execute if score @s CO.EventTimer matches 379 run function asset:mob/0456.gargo_ex_machina/tick/util/end_invulnerable

# 終了
    execute if score @s CO.EventTimer matches 380.. run function asset:mob/0456.gargo_ex_machina/tick/event/change_head/end
