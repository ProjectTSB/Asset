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
    execute if score @s CO.EventTimer matches 1..30 run particle explosion ~ ~20 ~ 4 7 4 0 5 force @a[distance=..80]
    execute if score @s CO.EventTimer matches 20 run playsound block.beacon.deactivate hostile @a ~ ~ ~ 4 1.3
    execute if score @s CO.EventTimer matches 20 run playsound block.beacon.deactivate hostile @a ~ ~ ~ 4 1.1
    execute if score @s CO.EventTimer matches 228 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    execute if score @s CO.EventTimer matches 246 run playsound block.iron_door.close hostile @a ~ ~ ~ 4 0.7
    execute if score @s CO.EventTimer matches 246 run playsound block.iron_door.close hostile @a ~ ~ ~ 4 0.5
    execute if score @s CO.EventTimer matches 256 run playsound block.end_portal_frame.fill hostile @a ~ ~ ~ 4 1.0
    execute if score @s CO.EventTimer matches 256 run playsound block.end_portal_frame.fill hostile @a ~ ~ ~ 4 0.8
    # 画面エフェクト
        execute if score @s CO.EventTimer matches 279 run title @a[distance=..160] times 3 0 5
        execute if score @s CO.EventTimer matches 279 run title @a[distance=..160] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}
    execute if score @s CO.EventTimer matches 280 run playsound entity.wither.spawn hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s CO.EventTimer matches 280 run playsound minecraft:block.end_portal.spawn hostile @a[distance=..80] ~ ~ ~ 0.5 1 0.5
    execute if score @s CO.EventTimer matches 280 run playsound item.trident.thunder hostile @a[distance=..80] ~ ~ ~ 0.4 0.6 0.4
    # モデル変更
        execute if score @s CO.EventTimer matches 256 run function asset:mob/0456.gargo_ex_machina/tick/util/change_model
        execute if score @s CO.EventTimer matches 280 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/variants/blue/apply

# 攻撃
    execute if score @s CO.EventTimer matches 110 positioned ^ ^ ^12 run function asset:mob/0456.gargo_ex_machina/tick/event/change_head/prediction
    execute if score @s CO.EventTimer matches 210 positioned ^ ^ ^12 run function asset:mob/0456.gargo_ex_machina/tick/event/change_head/attack
    # 攻撃演出
        execute if score @s CO.EventTimer matches 210 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~2
        execute if score @s CO.EventTimer matches 211 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 212 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~4
        execute if score @s CO.EventTimer matches 213 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 214 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 215 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-3
        execute if score @s CO.EventTimer matches 216 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 217 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-1

# ボス名変更
    execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m {Name:"絡繰仕掛の石像",Visible:"false"}
    execute if score @s CO.EventTimer matches 271 run function asset:mob/0456.gargo_ex_machina/tick/util/change_health
    execute if score @s CO.EventTimer matches 272 run function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m {Name:"絡繰仕掛の石像",Visible:"true"}

# 無敵化
    execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/start_invulnerable
    execute if score @s CO.EventTimer matches 325 run function asset:mob/0456.gargo_ex_machina/tick/util/end_invulnerable

# 回転
    execute if score @s CO.EventTimer matches ..80 run function asset:mob/0456.gargo_ex_machina/tick/util/rotate_to_center
# モデルを合わせる
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 終了
    execute if score @s CO.EventTimer matches 326.. run function asset:mob/0456.gargo_ex_machina/tick/event/change_head/end
