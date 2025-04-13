#> asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/set_attack_position.m
#
# テルツェット・ディザスター
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/attack

# 攻撃位置決定
    execute positioned as @p[tag=BF.MainTarget] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BF.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,limit=1] at @s run function asset:mob/0411.behemoth/tick/util/move_to_ground
    $summon area_effect_cloud ^$(posx) ^$(posy) ^$(posz) {Duration:1,Tags:["BF.Temp.AttackRotation"]}
    execute as @e[type=area_effect_cloud,tag=BF.Temp.AttackRotation,limit=1] at @s facing entity @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,limit=1] feet run tp @s ~ ~ ~ ~ ~
