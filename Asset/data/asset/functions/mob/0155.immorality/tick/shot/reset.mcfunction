#> asset:mob/0155.immorality/tick/shot/reset
#
# リセット処理
#
# @within function asset:mob/0155.immorality/tick/

#> Private
# @private
    #declare score_holder $Random
    #declare score_holder $DivisionValue

# 自身のNoAIを解除
    data modify entity @s NoAI set value 0b

# 次に攻撃するタイミングをランダムにする
# 難易度で剰余の範囲が変動する
    function api:global_vars/get_difficulty
    execute store result score $DivisionValue Temporary run data get storage api: Return.Difficulty 15
    scoreboard players add $DivisionValue Temporary 1

# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..65535
# 剰余算する
    scoreboard players operation $Random Temporary %= $DivisionValue Temporary
# スコアセット
    scoreboard players operation @s General.Mob.Tick = $Random Temporary
    scoreboard players remove @s General.Mob.Tick 80
# この段階でGeneral.Mob.Tickが0以上なら-1にする
    execute if entity @s[scores={General.Mob.Tick=0..}] run scoreboard players set @s General.Mob.Tick -1

# リセット処理
    scoreboard players reset $Random Temporary
    scoreboard players reset $DivisionValue Temporary
    scoreboard players reset @s 4B.ShotCount
    scoreboard players reset @s 4B.ShotMax
