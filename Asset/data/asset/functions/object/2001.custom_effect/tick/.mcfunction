#> asset:object/2001.custom_effect/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2001/tick

# まずFrameを取得
    data modify storage asset:temp 2001.Frame set from storage asset:context this.Frames[-1]
    data remove storage asset:context this.Frames[-1]

# スコアが正かつ透明状態なら可視化
    execute if entity @s[tag=2001.Invisible] unless data storage asset:temp 2001{Frame:-1} run function asset:object/2001.custom_effect/tick/visible

# Frameを切り替える
    execute unless entity @s[tag=2001.Invisible] run data modify entity @s item.tag.CustomModelData set from storage asset:temp 2001.Frame

# Frameがなければキル
    execute unless data storage asset:temp 2001.Frame run kill @s

# データを削除
    data remove storage asset:temp 2001
