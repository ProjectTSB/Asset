#> asset:mob/0437.lawless_iron_doll/tick/give_jump_boost/tick
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# エフェクトデータ
    data modify storage api: Argument.ID set value 192
    data modify storage api: Argument.Stack set value 2
    data modify storage api: Argument.Duration set value 120

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 数tickごとに処理を実行し、付近にいてかつ臆病風エリアの外なら付与
    scoreboard players operation $Interval Temporary %= $40 Const
    execute if score $Interval Temporary matches 0 as @a[distance=..256] positioned ~-64 ~5 ~-64 unless entity @s[dx=127,dy=64,dz=127] run function api:entity/mob/effect/give
# リセット
    scoreboard players reset $Interval Temporary
    function api:entity/mob/effect/reset
