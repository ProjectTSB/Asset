#> asset:effect/0336.self_loathing/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0336.self_loathing/_/given

# 補正あげる
    function asset:effect/0336.self_loathing/modifier/add

# 暗闇エフェクト付与
    data modify storage api: Argument set value {ID:24,Duration:80}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 前方に煽りメッセージを召喚する(上のは保留で)
    #execute anchored eyes positioned ^ ^ ^2 run function asset:effect/0336.self_loathing/given/message
    execute anchored eyes positioned ^ ^ ^2 run summon area_effect_cloud ~ ~ ~ {Duration:80,Passengers:[{id:"minecraft:text_display",billboard:"center",default_background:0b,alignment:"center",Tags:["AutoKillWhenDieVehicle","ProcessCommonTag"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:'[{"text":"自己嫌悪に苛まれた","color":"black"}]',background:-65536}]}

# 音
    playsound entity.turtle.egg_break player @s ~ ~ ~ 1 1
