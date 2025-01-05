#> asset:mob/0380.haruclaire_v3/tick/event/ice_spear/summon_attack_pos
#
# アイスウォール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos_wide

# データ設定
    data modify entity @s Duration set value 200
    tag @s add AK.Temp.AttackPosition

# 攻撃位置決定
    function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor

# 通知
    execute at @s run particle electric_spark ~ ~0.5 ~ 0 0 0 1 20
    execute at @s run particle end_rod ~ ~2 ~ 0 2 0 0 10
    execute at @s run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 0.5 1
