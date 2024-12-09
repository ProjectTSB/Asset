#> asset:artifact/0566.great_sage_helmet/trigger/fullset/damage/
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/trigger/fullset/damage/check

#> Val
# @private
    #declare score_holder $FQ.MaxHP
    #declare score_holder $FQ.CurrentHP

# 最大体力を取得
    function api:modifier/max_health/get
    execute store result score $FQ.MaxHP Temporary run data get storage api: Return.MaxHealth
# 現在体力を取得
    function api:data_get/health
    execute store result score $FQ.CurrentHP Temporary run data get storage api: Health 1000
# 割合
    scoreboard players operation $FQ.CurrentHP Temporary /= $FQ.MaxHP Temporary

# 体力が20%以下かつ10%の確率で喋る
    execute if score $FQ.CurrentHP Temporary matches ..201 if predicate lib:random_pass_per/10 run function asset:artifact/0566.great_sage_helmet/trigger/fullset/damage/talk

# リセット
    scoreboard players reset $FQ.MaxHP Temporary
    scoreboard players reset $FQ.CurrentHP Temporary
