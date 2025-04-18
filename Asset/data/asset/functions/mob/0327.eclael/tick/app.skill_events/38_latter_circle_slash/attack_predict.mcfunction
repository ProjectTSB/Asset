#> asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack_predict
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack

# 攻撃位置の偏差
    execute as @p[tag=!PlayerShouldInvulnerable] run function api:player_vector/get
    function lib:array/session/open
    data modify storage lib: Array set from storage api: Return.Vector
    data modify storage lib: Mul set value 25
    function lib:array/math/scalar_multiply
    data modify storage asset:temp Predict.X set from storage lib: MulResult[0]
    data modify storage asset:temp Predict.Z set from storage lib: MulResult[2]
    function lib:array/session/close
    function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack_predict.m with storage asset:temp Predict
    tag @p[tag=Target] remove Target
    data remove storage asset:temp Predict
