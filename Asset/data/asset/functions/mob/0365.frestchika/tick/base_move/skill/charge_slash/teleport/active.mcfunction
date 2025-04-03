#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/active
#
# テレポート発動、移動を行う
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/recursive_unless_breakable

# 自分の位置にマーカーを召喚
    execute at @s run summon marker ~ ~ ~ {Tags:["A5.Marker","A5.Marker.Aim"]}

# レーザーをさっきのマーカーに向けて撃つ
    execute positioned ~ ~1 ~ facing entity @e[type=marker,tag=A5.Marker.Aim,distance=..64,sort=nearest,limit=1] feet run function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/teleport/visual_laser

# マーカーをキル
    kill @e[type=marker,tag=A5.Marker.Aim,distance=..64,sort=nearest,limit=1]

# 移動
    tp @s ~ ~ ~
