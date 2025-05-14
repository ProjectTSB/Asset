#> asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos_start
#
# アイスウォール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/

# 攻撃位置決定
    execute if predicate api:global_vars/difficulty/max/2_hard rotated ~0 0 positioned ^ ^ ^9 run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~-15 0 positioned ^ ^ ^9 run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos
    execute if predicate api:global_vars/difficulty/max/2_hard rotated ~120 0 positioned ^ ^ ^9 run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~120 0 positioned ^ ^ ^9 rotated ~30 ~ run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos
    execute if predicate api:global_vars/difficulty/1_normal rotated ~240 0 positioned ^ ^ ^9 run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos
    execute if predicate api:global_vars/difficulty/min/2_hard rotated ~240 0 positioned ^ ^ ^9 rotated ~60 ~ run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos
