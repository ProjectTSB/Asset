#> asset:mob/0456.gargo_ex_machina/tick/event/activate/
#
# 起動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 起動
    # アニメーション再生
        execute if score @s CO.EventTimer matches 80 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/activation/tween {duration:1, to_frame: 1}
    # 石像移動
        execute if score @s CO.EventTimer matches 2 run function asset:mob/0456.gargo_ex_machina/tick/event/activate/clone_statue
    # 影
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.Shadow] run function asset:mob/0456.gargo_ex_machina/tick/util/hide_shadow
    # 効果音
        execute if score @s CO.EventTimer matches 60 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 118 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 125 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 155 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function asset:mob/0456.gargo_ex_machina/tick/util/sound

# 移動
    # アニメーション再生
        execute if score @s CO.EventTimer matches 205 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/move_to_field_fast/tween {duration:1, to_frame: 1}
        execute if score @s CO.EventTimer matches 265 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/move_to_field_fast/pause
        execute if score @s CO.EventTimer matches 305 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/move_to_field_fast/resume
    # フィールドに移動
        execute if score @s CO.EventTimer matches 231 positioned as @e[type=item_display,tag=CO.ScapeSheep] run tp @s ~ ~ ~ 180 0 
    # モデルを合わせる
        execute if score @s CO.EventTimer matches 231.. as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 影
        execute if score @s CO.EventTimer matches 232 as @e[type=item_display,tag=CO.Shadow] run function asset:mob/0456.gargo_ex_machina/tick/util/show_shadow
    # 演出
        execute if score @s CO.EventTimer matches 251 run particle explosion ~ ~1 ~ 4 0.1 4 0 30
        execute if score @s CO.EventTimer matches 251 run particle campfire_cosy_smoke ~ ~1 ~ 4 0.1 4 0.05 100
    # 効果音
        execute if score @s CO.EventTimer matches 205 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 227 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 251 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.7
        execute if score @s CO.EventTimer matches 251 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.6
        execute if score @s CO.EventTimer matches 251 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.5
        execute if score @s CO.EventTimer matches 251 run playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.8
        execute if score @s CO.EventTimer matches 251 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~2
        execute if score @s CO.EventTimer matches 252 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 253 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~4
        execute if score @s CO.EventTimer matches 254 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 255 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 256 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-3
        execute if score @s CO.EventTimer matches 257 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 258 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-1
        execute if score @s CO.EventTimer matches 321 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 345 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # ボス名変更
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m {Name:"絡繰仕掛の石像",Visible:"false"}
        execute if score @s CO.EventTimer matches 350 run function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m {Name:"絡繰仕掛の石像",Visible:"true"}
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/event/activate/show_dummy_bossbar
        execute if score @s CO.EventTimer matches 251 run function asset:mob/0456.gargo_ex_machina/tick/event/activate/clear_dummy_bossbar
        execute if score @s CO.EventTimer matches 350 run bossbar remove asset:co_scape_sheep

# 終了
    execute if score @s CO.EventTimer matches 351.. run function asset:mob/0456.gargo_ex_machina/tick/event/activate/end
