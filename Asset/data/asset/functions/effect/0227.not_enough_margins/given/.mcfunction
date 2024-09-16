#> asset:effect/0227.not_enough_margins/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0227.not_enough_margins/_/given

# 補正を付与する
    function asset:effect/0227.not_enough_margins/modifier/add

    say 足りない余白
    tellraw @p {"storage":"asset:context","nbt":"Stack"}
