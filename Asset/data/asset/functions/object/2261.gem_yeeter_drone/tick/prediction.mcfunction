#> asset:object/2261.gem_yeeter_drone/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/event_idle
# @private
    #declare score_holder $PredictionTime

# 予告
    data modify storage api: Argument.ID set value 2271
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.TextColor set value "#ffcf80"
    data modify storage api: Argument.FieldOverride.Scale set value [24f, 24f, 0.05f]
    scoreboard players operation $PredictionTime Global = @s 2261.IdleTime
    scoreboard players operation $PredictionTime Global -= @s 2261.PredictionTime
    # 攻撃までの予備動作が40なのを考慮
    scoreboard players add $PredictionTime Global 40
    # TNTのtickが60なのを考慮
    execute store result storage api: Argument.FieldOverride.Tick int 1 run scoreboard players add $PredictionTime Global 60
    execute rotated ~ 0 positioned ~ ~0.2 ~ run function api:object/summon
