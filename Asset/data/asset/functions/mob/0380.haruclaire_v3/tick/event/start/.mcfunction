#> asset:mob/0380.haruclaire_v3/tick/event/start/
#
# 登場
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# 演出
    execute if score @s AK.EventTimer matches 10 at @s run particle firework ~ ~1 ~ 0.1 0.1 0.1 0.3 10
    execute if score @s AK.EventTimer matches 10 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 30 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 71 at @s run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 87 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 99 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 105 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3

# 無敵化
    execute if score @s AK.EventTimer matches 1..131 run effect give @s resistance 1 10 true
    execute if score @s AK.EventTimer matches 132 run effect clear @s resistance

# 終了
    execute if score @s AK.EventTimer matches 133.. run function asset:mob/0380.haruclaire_v3/tick/event/start/end
