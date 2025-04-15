#> asset:artifact/1138.over_pulse_bodyarmor/tick/absorption
#
#
#
# @within function asset:artifact/1138.over_pulse_bodyarmor/tick/3.main

#> private
# @private
    #declare score_holder $VM.MaxHealth

# VFX
    function asset:artifact/1138.over_pulse_bodyarmor/tick/sfx

# フラグをつける
    tag @s add VM.NotDamaged
    tag @s add VM.HasBarrier
# 非戦闘時バリア付与
# Absorption = $VM.MaxHealth * ($VL.Stack + 1) * 0.02
    # 最大体力を取得
        function api:modifier/max_health/get
        execute store result score $VM.MaxHealth Temporary run data get storage api: Return.MaxHealth 100
    # スタックを取得
        data modify storage api: Argument.ID set value 274
        function api:entity/mob/effect/get/from_id
        execute store result score $VL.Stack Temporary run data get storage api: Return.Effect.Stack
        scoreboard players add $VL.Stack Temporary 1
    # 衝撃吸収を付与
        execute store result storage api: Argument.Amount double 0.0002 run scoreboard players operation $VM.MaxHealth Temporary *= $VL.Stack Temporary
        data modify storage api: Argument.UUID set value [I;1,1,1138,5]
        data modify storage api: Argument.WipedCallback set value "asset:artifact/1138.over_pulse_bodyarmor/tick/callback"
        function api:entity/player/absorption/add

# リセット
    scoreboard players reset $VL.Stack
    scoreboard players reset $VM.MaxHealth
