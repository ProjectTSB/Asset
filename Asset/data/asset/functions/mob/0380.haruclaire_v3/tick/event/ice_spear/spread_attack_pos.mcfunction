#> asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
#
# アイスウォール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_spear/

# 前方拡散
    summon marker ~ ~20 ~ {Tags:["AK.Temp.AttackRotation"]}
    data modify storage lib: Argument.Distance set value 6
    data modify storage lib: Argument.Spread set value 2d
    execute as @e[type=marker,tag=AK.Temp.AttackRotation,distance=..30] at @p[gamemode=!spectator] positioned ~ ~20 ~ rotated ~ 90 run function lib:forward_spreader/circle

# 攻撃地点召喚
    execute at @p[gamemode=!spectator] positioned ~ ~20 ~ facing entity @e[type=marker,tag=AK.Temp.AttackRotation,distance=..30] feet positioned ^ ^ ^20 summon area_effect_cloud run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/summon_attack_pos

# 終了
    kill @e[type=marker,tag=AK.Temp.AttackRotation]
