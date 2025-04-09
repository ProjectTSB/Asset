#> asset:artifact/0822.sound_of_a_star/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0822.sound_of_a_star/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $MPPer

# MP消費前のMP割合を求める
# MP割合を取得
    function api:entity/player/get_mp_per
    execute store result score $MPPer Temporary run data get storage api: Return.MPPer 100

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.7 0 0
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.4 0.5 0
    playsound minecraft:block.bell.resonate player @a ~ ~ ~ 0.8 0.5

# 1個目
    execute anchored eyes positioned ^ ^0.2 ^0.6 run function asset:artifact/0822.sound_of_a_star/trigger/summon_star.m {Damage:450,StartDelay:10}

# MP割合が34%以上なら2個目
    execute if score $MPPer Temporary matches 34.. anchored eyes positioned ^0.4 ^-0.3 ^0.6 run function asset:artifact/0822.sound_of_a_star/trigger/summon_star.m {Damage:650,StartDelay:15}

# MP割合が67%以上なら3個目
    execute if score $MPPer Temporary matches 67.. anchored eyes positioned ^-0.4 ^-0.3 ^0.6 run function asset:artifact/0822.sound_of_a_star/trigger/summon_star.m {Damage:850,StartDelay:20}

# リセット
    scoreboard players reset $MPPer Temporary
