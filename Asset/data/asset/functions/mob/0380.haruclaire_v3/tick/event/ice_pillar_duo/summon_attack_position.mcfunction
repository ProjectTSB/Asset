#> asset:mob/0380.haruclaire_v3/tick/event/ice_pillar_duo/summon_attack_position
#
# アイスピラー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_pillar_duo/

# 攻撃位置決定
    summon area_effect_cloud ^0 ^ ^-4 {Tags:["AK.Temp.AttackPosition"],Duration:100}
    summon area_effect_cloud ^3.4641 ^ ^-2 {Tags:["AK.Temp.AttackPosition"],Duration:100}
    summon area_effect_cloud ^3.4641 ^ ^2 {Tags:["AK.Temp.AttackPosition"],Duration:100}
    summon area_effect_cloud ^0 ^ ^4 {Tags:["AK.Temp.AttackPosition"],Duration:100}
    summon area_effect_cloud ^-3.4641 ^ ^2 {Tags:["AK.Temp.AttackPosition"],Duration:100}
    summon area_effect_cloud ^-3.4641 ^ ^-2 {Tags:["AK.Temp.AttackPosition"],Duration:100}

# プレイヤー人数に応じて数を減らす
    execute store result score @s AK.Dummy if entity @a[gamemode=!spectator,distance=..60]
    scoreboard players remove @s AK.Dummy 6
    execute store result storage asset:temp AK.Count int 1 run scoreboard players operation @s AK.Dummy *= $-1 Const
    execute if score @s AK.Dummy matches 1.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar_duo/kill_attack_position.m with storage asset:temp AK

# 終了
    data remove storage asset:temp AK
