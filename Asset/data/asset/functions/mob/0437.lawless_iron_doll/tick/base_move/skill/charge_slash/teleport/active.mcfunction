#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge_slash/teleport/active
#
# テレポート発動、移動を行う
#
# @within function
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge_slash/teleport/recursive
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge_slash/teleport/recursive_unless_breakable

# 自分の位置にマーカーを召喚
    execute at @s run summon marker ~ ~ ~ {Tags:["C5.Marker","C5.Marker.Aim"]}

# レーザーをさっきのマーカーに向けて撃つ
    execute positioned ~ ~1 ~ facing entity @e[type=marker,tag=C5.Marker.Aim,distance=..64,sort=nearest,limit=1] feet run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge_slash/teleport/visual_laser

# マーカーをキル
    kill @e[type=marker,tag=C5.Marker.Aim,distance=..64,sort=nearest,limit=1]

# 移動
    tp @s ~ ~ ~
