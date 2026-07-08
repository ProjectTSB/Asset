#> asset:mob/0189.water_mage/tick/summon/
#
#
#
# @within function asset:mob/0189.water_mage/tick/

# 難易度に応じてどの距離まで召喚できるか変える

# Hard以下
# プレイヤーが4m以内にいる場合、足元に召喚
# プレイヤーが4m以上離れている場合、プレイヤーの方向に召喚
    execute if predicate api:global_vars/difficulty/max/2_hard at @p[gamemode=!spectator,distance=..4] run function asset:mob/0189.water_mage/tick/summon/set_pos
    execute if predicate api:global_vars/difficulty/max/2_hard unless entity @p[gamemode=!spectator,distance=..4] if entity @p[gamemode=!spectator,distance=4..30] facing entity @p[gamemode=!spectator,distance=4..30] feet positioned ^ ^ ^4 run function asset:mob/0189.water_mage/tick/summon/set_pos

# Blessless以上で足元に召喚できる範囲を強化
    execute if predicate api:global_vars/difficulty/min/3_blessless at @p[gamemode=!spectator,distance=..6] run function asset:mob/0189.water_mage/tick/summon/set_pos
    execute if predicate api:global_vars/difficulty/min/3_blessless unless entity @p[gamemode=!spectator,distance=..6] if entity @p[gamemode=!spectator,distance=6..30] facing entity @p[gamemode=!spectator,distance=6..30] feet positioned ^ ^ ^7 run function asset:mob/0189.water_mage/tick/summon/set_pos

# 次に攻撃するタイミングをランダムにする
    execute store result score @s General.Mob.Tick run random value -120..-90
