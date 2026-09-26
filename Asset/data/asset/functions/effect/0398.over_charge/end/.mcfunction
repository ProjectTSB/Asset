#> asset:effect/0398.over_charge/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0398.over_charge/_/end

#> Private
# @private
    #declare score_holder $CurrentMP
    #declare score_holder $ReduceMPPer

# 削除
    function asset:effect/0398.over_charge/modifier/remove

# MP減らす
    # 数値取得
        function api:mp/get_current
        execute store result score $CurrentMP Temporary run data get storage api: Return.CurrentMP
        execute store result score $ReduceMPPer Temporary run data get storage asset:context this.ReduceMPPer 100
    # 減らす
        execute store result storage api: Argument.Fluctuation double -0.01 run scoreboard players operation $CurrentMP Temporary *= $ReduceMPPer Temporary
        function api:mp/fluctuation
