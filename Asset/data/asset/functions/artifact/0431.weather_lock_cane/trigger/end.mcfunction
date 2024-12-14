#> asset:artifact/0431.weather_lock_cane/trigger/end
#
# lockを解除します
#
# @within function asset:artifact/0431.weather_lock_cane/trigger/3.main

# 戻す
    gamerule doWeatherCycle true
# タグを消す
    execute as @a at @s run function asset:artifact/0431.weather_lock_cane/trigger/weather/clear
# ストレージを消す
    data remove storage asset:temp BZ
