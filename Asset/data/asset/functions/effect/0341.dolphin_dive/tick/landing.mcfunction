#> asset:effect/0341.dolphin_dive/tick/landing
#
#
#
# @within function asset:effect/0341.dolphin_dive/tick/

# 一時的に定義してエラーを回避する
#> Private
# @private
    #declare objective PlayerMotion.Api.Launch
    #declare function lib:player_motion/launch_looking

# Durationを0にしてエフェクト解除
    data modify storage asset:context Duration set value 0

    tp @s @s

# PlayerMotion
    scoreboard players set $strength PlayerMotion.Api.Launch 7000
    execute rotated ~ -65 run function lib:player_motion/launch_looking

# Object召喚
    data modify storage api: Argument.ID set value 1151
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
