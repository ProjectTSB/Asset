#> asset:artifact/0605.ambition/trigger/vfx/
#
#
#
# @within function asset:artifact/0605.ambition/trigger/3.main

#> Private
# @private
    #declare score_holder $Per

# 現在ダメージを$Perへ移し、100倍する
    scoreboard players operation $Per Temporary = @p[tag=this] Temporary
    scoreboard players operation $Per Temporary *= $100 Const

# 最大ダメージとの割合算出
    scoreboard players operation $Per Temporary /= $MaxDamage Temporary

# debug
    # scoreboard players set $Per Temporary 100

# 割合に応じて$Countを設定
    execute if score $Per Temporary matches 50..99 run scoreboard players set $Count Temporary 1
    execute if score $Per Temporary matches 100 run scoreboard players set $Count Temporary 2

# 演出
    execute rotated ~ 0 run function asset:artifact/0605.ambition/trigger/vfx/circle
    playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 1.2
    execute if score $Per Temporary matches 50..99 run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 1.1
    execute if score $Per Temporary matches 100 run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.3 1.0

# 再帰を用いて演出
    execute if score $Count Temporary matches 1.. run function asset:artifact/0605.ambition/trigger/vfx/recursive

# リセット
    scoreboard players reset $Per Temporary
    scoreboard players reset $Count Temporary
