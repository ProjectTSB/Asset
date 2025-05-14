#> asset:mob/0380.haruclaire_v3/tick/event/ice_spear_duo/summon_attack_pos
#
# アイススピア
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_spear_duo/

# 攻撃位置決定
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~45 ~ run summon area_effect_cloud ^ ^-0.5 ^15 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~135 ~ run summon area_effect_cloud ^ ^-0.5 ^15 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~225 ~ run summon area_effect_cloud ^ ^-0.5 ^15 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~315 ~ run summon area_effect_cloud ^ ^-0.5 ^15 {Tags:["AK.Temp.AttackPosition"],Duration:200}

    execute if predicate api:global_vars/difficulty/normal rotated ~ ~ run summon area_effect_cloud ^ ^-0.5 ^15 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute if predicate api:global_vars/difficulty/normal rotated ~120 ~ run summon area_effect_cloud ^ ^-0.5 ^15 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute if predicate api:global_vars/difficulty/normal rotated ~240 ~ run summon area_effect_cloud ^ ^-0.5 ^15 {Tags:["AK.Temp.AttackPosition"],Duration:200}

    execute if predicate api:global_vars/difficulty/easy rotated ~ ~ run summon area_effect_cloud ^ ^-0.5 ^15 {Tags:["AK.Temp.AttackPosition"],Duration:200}
    execute if predicate api:global_vars/difficulty/easy rotated ~180 ~ run summon area_effect_cloud ^ ^-0.5 ^15 {Tags:["AK.Temp.AttackPosition"],Duration:200}
