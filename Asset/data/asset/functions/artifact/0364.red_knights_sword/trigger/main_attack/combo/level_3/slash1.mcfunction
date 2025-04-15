#> asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_3/slash1
#
# 斬撃のダメージ:レベル3
#
# @within function asset:artifact/0364.red_knights_sword/trigger/main_attack/

# 調整担当へのメモ:
# レベル3斬撃は強い！…
# レベル3~4の強神器くらいのダメージは出てもいいのかな？

# 演出
    playsound ogg:item.trident.throw1 player @a ~ ~ ~ 1.5 0.5
    playsound ogg:item.trident.return1 player @a ~ ~ ~ 1.5 1.3
    playsound ogg:block.respawn_anchor.deplete1 player @a ~ ~ ~ 0.7 1.3
    playsound minecraft:item.axe.scrape player @a ~ ~ ~ 1.5 1.1

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[6f,6f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^ ^1 positioned ~ ~-0.5 ~ run function api:object/summon

# Shape
    execute positioned ^ ^ ^2 positioned ~ ~-0.5 ~ run function asset:artifact/0364.red_knights_sword/trigger/main_attack/shape/level_3/1

# 攻撃判定
    # ターゲット指定
        execute positioned ^ ^ ^1 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..4] add A4.Hit
        execute as @e[type=#lib:living,type=!player,tag=A4.Hit,tag=!Uninterferable,distance=..4] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=A4.Hit,tag=!Uninterferable,distance=..100] remove A4.Hit
    # ダメージ処理へ
        execute as @e[type=#lib:living,type=!player,tag=A4.Hit,tag=!Uninterferable,distance=..4] run function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_3/damage

# 衝撃波を飛ばす
    data modify storage api: Argument.FieldOverride.transformation set value {left_rotation:[-0.5f,-0.5f,-0.5f,0.5f]}
    function asset:artifact/0364.red_knights_sword/trigger/main_attack/combo/level_3/slash_shot
