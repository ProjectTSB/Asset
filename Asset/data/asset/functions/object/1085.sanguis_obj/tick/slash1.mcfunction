#> asset:object/1085.sanguis_obj/tick/slash1
#
#
#
# @within function asset:object/1085.sanguis_obj/tick/

# 演出
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.5
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1 1.5

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:14929614,Frames:[20335,20336,20337],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.271f,-0.653f,0.271f,0.653f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ~ ~1 ~ run function api:object/summon

# 攻撃判定
    function asset:object/1085.sanguis_obj/tick/damage
