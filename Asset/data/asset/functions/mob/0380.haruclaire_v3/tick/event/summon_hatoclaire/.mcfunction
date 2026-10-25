#> asset:mob/0380.haruclaire_v3/tick/event/summon_hatoclaire/
#
# 登場
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# アニメーション再生
    execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/20_second_start

# 演出
    execute if score @s AK.EventTimer matches 2 at @s run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 2..40 at @s run playsound block.note_block.snare hostile @a[distance=..30] ~ ~ ~ 0.6 0.6 0.2
    execute if score @s AK.EventTimer matches 41 at @s run playsound block.note_block.snare hostile @a ~ ~ ~ 2 0.6
    execute if score @s AK.EventTimer matches 43 at @s run playsound block.note_block.snare hostile @a ~ ~ ~ 2 0.6
    execute if score @s AK.EventTimer matches 53 at @s run particle firework ~ ~1 ~ 0.1 0.1 0.1 0.3 10
    execute if score @s AK.EventTimer matches 53 at @s run playsound entity.arrow.hit_player hostile @a ~ ~ ~ 2 0.8
    execute if score @s AK.EventTimer matches 47 at @s run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 91 at @s run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 2
    execute if score @s AK.EventTimer matches 93 at @s run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 2
    execute if score @s AK.EventTimer matches 95 at @s run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 2
    execute if score @s AK.EventTimer matches 97 at @s run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 2
    execute if score @s AK.EventTimer matches 99 at @s run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 2
    execute if score @s AK.EventTimer matches 101 at @s run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 2
    execute if score @s AK.EventTimer matches 108 at @s run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3

# 無敵化
    execute if score @s AK.EventTimer matches 1..125 run effect give @s resistance 1 10 true
    execute if score @s AK.EventTimer matches 126 run effect clear @s resistance

# 終了
    execute if score @s AK.EventTimer matches 126.. run function asset:mob/0380.haruclaire_v3/tick/event/summon_hatoclaire/end
