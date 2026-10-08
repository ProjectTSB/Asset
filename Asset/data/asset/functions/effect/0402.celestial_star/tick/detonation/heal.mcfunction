#> asset:effect/0402.celestial_star/tick/detonation/heal
#
# 星を起爆したプレイヤーの回復補正を掛け、対象のプレイヤーを基礎値20の20%単位の倍率で回復する
#
# @within function asset:effect/0402.celestial_star/tick/detonation/pop

    execute store result storage api: Argument.Heal float 4 run data get storage asset:context this.Detonation.Multiplier
    function api:heal/modifier
    execute store result score $402.Target Temporary run data get storage asset:temp 402.Target.UserID
    execute as @a if score @s UserID = $402.Target Temporary run function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $402.Target Temporary
