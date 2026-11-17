#> asset:artifact/0108.vacuum_hopper/trigger/vacuum/
#
#
#
# @within function asset:artifact/0108.vacuum_hopper/trigger/3.main

#> Private
# @private
    #declare score_holder $Move
    #declare score_holder $Temp
    #declare score_holder $KBResist

# 移動距離(100倍)
# Mobノックバック耐性はデフォルトで0.75くらいなので目安の4倍くらいで
    scoreboard players set $Move Temporary 100

# 100
    scoreboard players set $Temp Temporary 100

# 自身のノックバック耐性で吸い込み距離を変更
    execute store result score $KBResist Temporary run attribute @s generic.knockback_resistance get 100
    scoreboard players operation $Temp Temporary -= $KBResist Temporary
    execute store result storage asset:temp Args.Move double 0.0001 run scoreboard players operation $Move Temporary *= $Temp Temporary
    execute unless data storage asset:temp Args{Move:0.0d} run function asset:artifact/0108.vacuum_hopper/trigger/vacuum/tp.m with storage asset:temp Args

# リセット
    scoreboard players reset $Move Temporary
    scoreboard players reset $Temp Temporary
    scoreboard players reset $KBResist Temporary
    data remove storage asset:temp Args
