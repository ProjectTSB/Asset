#> asset:mob/0189.water_mage/tick/3.summon_water_magic
#
# ウォーターマジックを召喚
#
# @within function asset:mob/0189.water_mage/tick/2.tick

#> Private
# @private
    #declare score_holder $Random

# ID設定
    data modify storage api: Argument.ID set value 214

# ノーマル以下
# プレイヤーが4m以内にいる場合、足元に召喚
# プレイヤーが4m以上離れている場合、プレイヤーの方向に召喚
    execute if predicate api:global_vars/difficulty/max/normal if entity @p[gamemode=!spectator,distance=..4] at @p[gamemode=!spectator,distance=..4] run function api:mob/summon
    execute if predicate api:global_vars/difficulty/max/normal if data storage api: Argument.ID if entity @p[gamemode=!spectator,distance=4..30] facing entity @p[gamemode=!spectator,distance=4..30] feet positioned ^ ^ ^7 run function api:mob/summon

# ハード以上で足元に召喚できる範囲を強化
    execute if predicate api:global_vars/difficulty/min/hard if entity @p[gamemode=!spectator,distance=..6] at @p[gamemode=!spectator,distance=..6] run function api:mob/summon
    execute if predicate api:global_vars/difficulty/min/hard if data storage api: Argument.ID if entity @p[gamemode=!spectator,distance=6..30] facing entity @p[gamemode=!spectator,distance=6..30] feet positioned ^ ^ ^7 run function api:mob/summon

# 次に攻撃するタイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s 59.Tick = $Random Temporary
    scoreboard players remove @s 59.Tick 30

# リセット
    scoreboard players reset $Random Temporary
