#> asset:mob/0378.red_knight_v3/tick/05.skill_jump/jump
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/05.skill_jump/main

#> tag
# @private
    #declare tag TPMarker

# 斬撃
    execute positioned ^ ^ ^2 run function asset:mob/0378.red_knight_v3/tick/common/slash
    data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[-0.707f,0f,-0.707f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}


    execute positioned ^ ^ ^2 positioned ~ ~1 ~ run function asset:mob/0378.red_knight_v3/tick/common/slash_obj_summon

# マーカー設置
    execute at @a[gamemode=!spectator,distance=..30,sort=random,limit=1] positioned ~ ~6 ~ run summon marker ~ ~ ~ {Tags:["TPMarker"]}

# 移動
    function asset:mob/0378.red_knight_v3/tick/05.skill_jump/loop_tp

# マーカーキル
    kill @e[type=marker,tag=TPMarker,distance=..100]
