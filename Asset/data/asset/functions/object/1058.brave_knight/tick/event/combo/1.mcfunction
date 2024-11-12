#> asset:object/1058.brave_knight/tick/event/combo/1
#
#
#
# @within function asset:object/1058.brave_knight/tick/event/combo/

# サウンド
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 0.5 1.2

# 体の向き
    tp @s ~ ~ ~ ~90 ~

# ポーズ
    data modify entity @s Pose.LeftArm set value [45f,0f,-45f]
    data modify entity @s Pose.RightArm set value [15f,0f,90f]

# パーティクル
    execute facing entity @e[type=#lib:living,tag=Enemy,sort=nearest,limit=1] eyes rotated ~ 0 anchored eyes positioned ^ ^0.2 ^0.7 run function asset:object/1058.brave_knight/tick/event/combo/particle

# フィールド設定
    data modify storage api: Argument.FieldOverride set value {Color:50175,Frames:[20335,20336,20337],Scale:[1f,1f,0.1f],Transformation:{left_rotation:[-0.7f,0.0f,0.0f,0.7f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute anchored eyes positioned ^ ^0.5 ^ positioned ^ ^ ^0 run function api:object/summon

# ダメージを与える
    execute as @e[type=#lib:living,tag=Enemy,sort=nearest,limit=1] run function asset:object/1058.brave_knight/tick/event/combo/damage
