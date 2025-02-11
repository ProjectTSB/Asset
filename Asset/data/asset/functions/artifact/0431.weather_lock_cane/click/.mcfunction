#> asset:artifact/0431.weather_lock_cane/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/431/click/

# 天候によりstorageを設定する
    execute in overworld if predicate lib:weather/is_sunny run data modify storage asset:temp BZ.Weather set value "Sunny"
    execute in overworld if predicate lib:weather/is_raining run data modify storage asset:temp BZ.Weather set value "Rain"
    execute in overworld if predicate lib:weather/is_thundering run data modify storage asset:temp BZ.Weather set value "Thunder"

# 演出
    # chat
        tellraw @a [{"text": "天鍵杖","color": "aqua"},{"text": "の効果で天候が固定された！","color": "white"}]
    # Sound
        playsound ui.button.click player @a ~ ~ ~ 1000000 1 1
        playsound ui.button.click player @a ~ ~ ~ 1000000 1 1
        playsound ui.button.click player @a ~ ~ ~ 1000000 1 1
    # Particle
        execute rotated ~ 0 positioned ^ ^10 ^-10 run function asset:artifact/0431.weather_lock_cane/click/vfx/key
# 補正の追加
    execute as @a at @s run function asset:artifact/0431.weather_lock_cane/click/weather/

# 天候を固定するためのループを発動
    gamerule doWeatherCycle false
    function asset:artifact/0431.weather_lock_cane/click/weather/lock

# リセット用ループ
    schedule function asset:artifact/0431.weather_lock_cane/click/end 2000t replace
