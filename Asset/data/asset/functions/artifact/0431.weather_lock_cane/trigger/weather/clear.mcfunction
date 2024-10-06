#> asset:artifact/0431.weather_lock_cane/trigger/weather/clear
#
#
#
# @within function
#      asset:artifact/0431.weather_lock_cane/trigger/end
#      asset:artifact/0431.weather_lock_cane/trigger/rejoin_process

# 演出
    # chat
        tellraw @s [{"text": "天鍵杖","color": "aqua"},{"text": "の効果が切れた！","color": "white"}]
    # Sound
        playsound block.glass.break player @a ~ ~ ~ 1000000 1 1
    # Particle
        execute at @s run particle dripping_water ~ ~ ~ 5 5 5 0 100 force @p

# 全消し
    data modify storage api: Argument.ID set value 207
    function api:entity/mob/effect/remove/from_id
    data modify storage api: Argument.ID set value 208
    function api:entity/mob/effect/remove/from_id
    data modify storage api: Argument.ID set value 209
    function api:entity/mob/effect/remove/from_id
    data modify storage api: Argument.ID set value 252
    function api:entity/mob/effect/remove/from_id

# リセット
    scoreboard players reset @s BZ.Dimension
