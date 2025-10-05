#> asset:object/2256.water_column/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2256/tick

# 配列の中身が空なら消し飛ばす
    execute unless data storage asset:context this.Anime[0] run return run kill @s

# 見た目変更
    data modify entity @s item.tag.CustomModelData set from storage asset:context this.Anime[-1]
    data remove storage asset:context this.Anime[-1]
