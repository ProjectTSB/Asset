#> asset:artifact/0566.great_sage_helmet/trigger/fullset/damage/
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/trigger/fullset/damage/check

#> Val
# @private
    #declare score_holder $FQ.HealthPer

# 現在体力割合を取得する
    function api:entity/player/get_health_per
    execute store result score $FQ.HealthPer Temporary run data get storage api: Return.HelathPer 1000

# 体力が20%以下かつ10%の確率で喋る
    execute if score $FQ.HealthPer Temporary matches ..200 if predicate lib:random_pass_per/10 run function asset:artifact/0566.great_sage_helmet/trigger/fullset/damage/talk

# リセット
    scoreboard players reset $FQ.HealthPer Temporary
