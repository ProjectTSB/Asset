#> asset:artifact/1307.yumeori/trigger/mp_bonus
#
# MP回復量がN%以下の時～のやつ
#
# @within function
#   asset:artifact/1307.yumeori/trigger/neutral_arrow
#   asset:artifact/1307.yumeori/trigger/curved_shot

#> Private
# @private
    #declare score_holder $MPPer

# MP割合チェック
    function api:entity/player/get_mp_per
    execute store result score $MPPer Temporary run data get storage api: Return.MPPer

# 一定%以下ならボーナスをかけてあげる
    execute if score $MPPer Temporary matches ..60 store result storage api: Argument.FieldOverride.AdditionalMPHeal double 0.01 run data get storage api: Argument.FieldOverride.AdditionalMPHeal 130

# リセット
    scoreboard players reset $MPPer Temporary
