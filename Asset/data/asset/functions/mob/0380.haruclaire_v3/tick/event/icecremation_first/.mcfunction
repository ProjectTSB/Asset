#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/
#
# アイスクリメーション・連続突進
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# 召喚
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/26_0_second_ice_cremation_first
    # 地面に移動
        execute if score @s AK.EventTimer matches 1..80 unless block ~ ~-0.64 ~ #lib:no_collision positioned ^ ^0.05 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 1..80 if block ~ ~-0.7 ~ #lib:no_collision positioned ^ ^-0.05 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp

# 攻撃
    # 中心点回転
        execute if score @s AK.EventTimer matches 1 as @e[type=marker,tag=AK.CenterPosition] at @s run function asset:mob/0380.haruclaire_v3/tick/util/turn_center_position
    # 召喚位置決定
        execute if score @s AK.EventTimer matches 1 at @e[type=marker,tag=AK.CenterPosition] run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/set_position
    # 召喚
        execute if score @s AK.EventTimer matches 139 at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/attack

# 移動
    execute if score @s AK.EventTimer matches 149..154 positioned ^ ^ ^-0.3 run function asset:mob/0380.haruclaire_v3/tick/util/tp
    execute if score @s AK.EventTimer matches 155..165 positioned ^ ^ ^-0.2 run function asset:mob/0380.haruclaire_v3/tick/util/tp

# 演出
    execute if score @s AK.EventTimer matches 2 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 2 1.3
    execute if score @s AK.EventTimer matches 13 at @s positioned ~ ~3 ~ run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/particle
    execute if score @s AK.EventTimer matches 13 at @s run playsound block.enchantment_table.use hostile @a ~ ~ ~ 3 1.6
    execute if score @s AK.EventTimer matches 84 at @s run playsound block.grindstone.use hostile @a ~ ~ ~ 2 1.8
    execute if score @s AK.EventTimer matches 90 at @s run playsound block.grindstone.use hostile @a ~ ~ ~ 2 1.8
    execute if score @s AK.EventTimer matches 96 at @s run playsound block.grindstone.use hostile @a ~ ~ ~ 2 1.8
    execute if score @s AK.EventTimer matches 102 at @s run playsound block.grindstone.use hostile @a ~ ~ ~ 2 1.8
    execute if score @s AK.EventTimer matches 108 at @s run playsound block.grindstone.use hostile @a ~ ~ ~ 2 1.8
    execute if score @s AK.EventTimer matches 114 at @s run playsound block.grindstone.use hostile @a ~ ~ ~ 2 1.8
    execute if score @s AK.EventTimer matches 130 at @s run playsound block.glass.place hostile @a ~ ~ ~ 2 1

    execute if score @s AK.EventTimer matches 84 at @s run particle block ice ^ ^3 ^ 0.5 0.5 0.5 0 5
    execute if score @s AK.EventTimer matches 90 at @s run particle block ice ^ ^3 ^ 0.5 0.5 0.5 0 5
    execute if score @s AK.EventTimer matches 96 at @s run particle block ice ^ ^3 ^ 0.5 0.5 0.5 0 5
    execute if score @s AK.EventTimer matches 102 at @s run particle block ice ^ ^3 ^ 0.5 0.5 0.5 0 5
    execute if score @s AK.EventTimer matches 108 at @s run particle block ice ^ ^3 ^ 0.5 0.5 0.5 0 5
    execute if score @s AK.EventTimer matches 114 at @s run particle block ice ^ ^3 ^ 0.5 0.5 0.5 0 5

# 終了
    execute if score @s AK.EventTimer matches 184.. run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/end
