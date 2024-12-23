#> asset:artifact/0431.weather_lock_cane/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0431.weather_lock_cane/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

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
        execute rotated ~ 0 positioned ^ ^10 ^-10 run function asset:artifact/0431.weather_lock_cane/trigger/vfx/key
# 補正の追加
    execute as @a at @s run function asset:artifact/0431.weather_lock_cane/trigger/weather/

# 天候を固定するためのループを発動
    gamerule doWeatherCycle false
    function asset:artifact/0431.weather_lock_cane/trigger/weather/lock

# リセット用ループ
    schedule function asset:artifact/0431.weather_lock_cane/trigger/end 3600t replace
