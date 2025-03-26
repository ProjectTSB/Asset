#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/
#
# アイスクリメーション・連続突進
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# 召喚
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/26_1_second_ice_cremation_short

# 攻撃
    # 中心点回転
        execute if score @s AK.EventTimer matches 1 as @e[type=marker,tag=AK.CenterPosition] at @s run function asset:mob/0380.haruclaire_v3/tick/util/turn_center_position
    # 召喚位置決定
        execute if score @s AK.EventTimer matches 1 at @e[type=marker,tag=AK.CenterPosition] run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/set_position
    # 召喚
        execute if score @s AK.EventTimer matches 30 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/attack
        execute if score @s AK.EventTimer matches 38 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/attack
        execute if score @s AK.EventTimer matches 46 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/attack
        execute if score @s AK.EventTimer matches 52 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/attack
        execute if score @s AK.EventTimer matches 60 as @e[type=area_effect_cloud,tag=AK.IceCrepation.Pos,limit=1] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/attack

# 演出
    execute if score @s AK.EventTimer matches 2 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 2 1.3
    execute if score @s AK.EventTimer matches 30 at @s run playsound block.enchantment_table.use hostile @a ~ ~ ~ 3 1.6

# 終了
    execute if score @s AK.EventTimer matches 62.. run function asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/end
