#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/
#
# アイスクリメーション・交差
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# 召喚
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/26_1_second_ice_cremation_short

# 攻撃
    # 中心点回転
        execute if score @s AK.EventTimer matches 1 as @e[type=marker,tag=AK.CenterPosition,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/util/turn_center_position
    # 召喚位置決定
        execute if score @s AK.EventTimer matches 1 at @e[type=marker,tag=AK.CenterPosition,distance=..80] run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/set_position
    # 召喚
        execute if score @s AK.EventTimer matches 20 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.A,distance=..80,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/attack
        execute if score @s AK.EventTimer matches 21 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.A,distance=..80,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/attack
        execute if score @s AK.EventTimer matches 25 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.C,distance=..80,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/attack
        execute if score @s AK.EventTimer matches 26 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.C,distance=..80,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/attack
        execute if score @s AK.EventTimer matches 60 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos.B,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/attack

# 演出
    execute if score @s AK.EventTimer matches 2 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 2 1.3
    execute if score @s AK.EventTimer matches 27 at @s positioned ~ ~4 ~ run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/particle
    execute if score @s AK.EventTimer matches 27 at @s run playsound block.enchantment_table.use hostile @a ~ ~ ~ 3 1.6

# 終了
    execute if score @s AK.EventTimer matches 62.. run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_cross/end
