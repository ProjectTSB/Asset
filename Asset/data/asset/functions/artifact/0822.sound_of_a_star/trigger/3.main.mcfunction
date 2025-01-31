#> asset:artifact/0822.sound_of_a_star/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0822.sound_of_a_star/trigger/2.check_condition

# MP消費前のMP割合を求める
    function api:mp/get_max
    execute store result score $MPMaxValue Temporary run data get storage api: Return.MaxMP
    function api:mp/get_current
    execute store result score $MPValue Temporary run data get storage api: Return.CurrentMP
    scoreboard players operation $MPValue Temporary *= $100 Const
    scoreboard players operation $MPValue Temporary /= $MPMaxValue Temporary

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.7 0 0
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.4 0.5 0
    playsound minecraft:block.bell.resonate player @a ~ ~ ~ 0.8 0.5

# 1個目
    execute anchored eyes positioned ^ ^0.2 ^0.6 run function asset:artifact/0822.sound_of_a_star/trigger/summon_star.m {Damage:600,StartDelay:10}

# MP割合が34%以上なら2個目
    execute if score $MPValue Temporary matches 34.. anchored eyes positioned ^0.4 ^-0.3 ^0.6 run function asset:artifact/0822.sound_of_a_star/trigger/summon_star.m {Damage:800,StartDelay:15}

# MP割合が67%以上なら3個目
    execute if score $MPValue Temporary matches 67.. anchored eyes positioned ^-0.4 ^-0.3 ^0.6 run function asset:artifact/0822.sound_of_a_star/trigger/summon_star.m {Damage:1000,StartDelay:20}

# リセット
    scoreboard players reset $MPMaxValue Temporary
    scoreboard players reset $MPValue Temporary
