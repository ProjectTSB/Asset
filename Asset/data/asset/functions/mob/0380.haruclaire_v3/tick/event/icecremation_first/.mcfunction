#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/
#
# アイスクリメーション・初回
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# 1
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/26_0_second_ice_cremation_first
    # 地面に移動
        execute if score @s AK.EventTimer matches 1..80 unless block ~ ~-0.64 ~ #lib:no_collision positioned ^ ^0.05 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 1..80 if block ~ ~-0.7 ~ #lib:no_collision positioned ^ ^-0.05 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp
    # 攻撃
        # 召喚
            execute if score @s AK.EventTimer matches 139 at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/attack
    # 移動
        execute if score @s AK.EventTimer matches 149..154 positioned ^ ^ ^-0.3 run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 155..165 positioned ^ ^ ^-0.2 run function asset:mob/0380.haruclaire_v3/tick/util/tp
    # 演出
        execute if score @s AK.EventTimer matches 2 at @s run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 2 1.3
        execute if score @s AK.EventTimer matches 31 at @s run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1.3
        execute if score @s AK.EventTimer matches 45 at @s run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 2 1.3
        execute if score @s AK.EventTimer matches 70 at @s run playsound entity.arrow.hit_player hostile @a ~ ~ ~ 2 1.7
        execute if score @s AK.EventTimer matches 154 at @s run playsound entity.phantom.flap hostile @a ~ ~ ~ 2 1.3
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
        execute if score @s AK.EventTimer matches 96 at @s run particle block ice ^ ^1 ^ 0.5 0.5 0.5 0 5
        execute if score @s AK.EventTimer matches 102 at @s run particle block ice ^ ^1 ^ 0.5 0.5 0.5 0 5
        execute if score @s AK.EventTimer matches 108 at @s run particle block ice ^ ^3 ^ 0.5 0.5 0.5 0 5
        execute if score @s AK.EventTimer matches 114 at @s run particle block ice ^ ^3 ^ 0.5 0.5 0.5 0 5
# 2
    # アニメーション再生
        execute if score @s AK.EventTimer matches 184 as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/26_1_second_ice_cremation_short
    # 攻撃
        # 召喚位置決定
            execute if score @s AK.EventTimer matches 184 at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/set_position
        # 召喚
            execute if score @s AK.EventTimer matches 213 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.A,distance=..80,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/attack_1
            execute if score @s AK.EventTimer matches 213 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.B,distance=..80,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/attack_2

    # 演出
        execute if score @s AK.EventTimer matches 185 at @s run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 2 1.3
        execute if score @s AK.EventTimer matches 210 at @s positioned ~ ~4 ~ run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/particle
        execute if score @s AK.EventTimer matches 210 at @s run playsound block.enchantment_table.use hostile @a ~ ~ ~ 3 1.6

# 無敵化
    execute if score @s AK.EventTimer matches 1..246 run effect give @s resistance 1 10 true
    execute if score @s AK.EventTimer matches 247 run effect clear @s resistance

# 終了
    execute if score @s AK.EventTimer matches 247.. run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/end
