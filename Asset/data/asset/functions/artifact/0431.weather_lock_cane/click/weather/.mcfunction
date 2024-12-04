#> asset:artifact/0431.weather_lock_cane/click/weather/
#
#
#
# @within function
#   asset:artifact/0431.weather_lock_cane/click/
#   asset:artifact/0431.weather_lock_cane/click/weather/lock
#   asset:artifact/0431.weather_lock_cane/rejoin_process

# ディメンションチェック
    execute if predicate lib:dimension/is_overworld unless score @s BZ.Dimension matches 0 run function asset:artifact/0431.weather_lock_cane/click/weather/overworld
    execute unless predicate lib:dimension/is_overworld unless score @s BZ.Dimension matches 1 run function asset:artifact/0431.weather_lock_cane/click/weather/another
# ディメンション更新
    execute if predicate lib:dimension/is_overworld run scoreboard players set @s BZ.Dimension 0
    execute unless predicate lib:dimension/is_overworld run scoreboard players set @s BZ.Dimension 1
