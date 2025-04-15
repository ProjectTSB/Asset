#> asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_1/slash1
#
#
#
# @within function asset:artifact/0364.red_knights_sword/trigger/main_attack/

# 演出
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 0.6
    playsound ogg:item.trident.throw1 player @a ~ ~ ~ 1.5 0.5

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[3f,3f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^1 positioned ~ ~-0.5 ~ run function api:object/summon

# 攻撃判定
    function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_1/damage
