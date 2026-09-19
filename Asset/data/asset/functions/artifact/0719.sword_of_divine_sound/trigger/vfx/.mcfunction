#> asset:artifact/0719.sword_of_divine_sound/trigger/vfx/
#
# vfx
#
# @within function asset:artifact/0719.sword_of_divine_sound/trigger/3.main

# 音
    playsound item.trident.thunder player @a ~ ~ ~ 0.5 1.7 0
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.6 1.2 0

# 円状のパーティクル
    function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/circle

# 演出用スコアのリセット
    scoreboard players reset $RecursiveLimit Temporary

# 演出用Object
    data modify storage api: Argument.ID set value 1191
    function api:object/summon
