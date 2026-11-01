#> asset:effect/0409.waxing/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0409.waxing/_/end

#> Private
# @private
    #declare score_holder $E0409.InitialMP
    #declare score_holder $E0409.MP
    #declare score_holder $E0409.MaxAbsorption
    #declare score_holder $E0409.MinAbsorption
    #declare score_holder $E0409.Multiplier

# バリア付与
    execute store result score $E0409.InitialMP Temporary run data get storage asset:context this.InitialMP
    function api:mp/get_current
    execute store result score $E0409.MP Temporary run data get storage api: Return.CurrentMP

    #最大/最低値を取得
    execute store result score $E0409.MinAbsorption Temporary run data get storage asset:context this.MinAbsorption
    execute store result score $E0409.MaxAbsorption Temporary run data get storage asset:context this.MaxAbsorption

    #差を計算、想定値域におさめる
    scoreboard players operation $E0409.MP Temporary -= $E0409.InitialMP Temporary
    execute if score $E0409.MP Temporary matches 1.. run scoreboard players operation $E0409.MP Temporary += $E0409.MinAbsorption Temporary
    execute if score $E0409.MP Temporary matches ..0 run scoreboard players operation $E0409.MP Temporary = $E0409.MinAbsorption Temporary
    scoreboard players operation $E0409.MP Temporary < $E0409.MaxAbsorption Temporary

    #Effect435付与
    data modify storage api: Argument.ID set value 435
    data modify storage api: Argument.Duration set from storage asset:context this.AbsorptionDuration

    execute store result score $E0409.Multiplier Temporary run data get storage asset:context this.Multiplier
    execute store result storage api: Argument.FieldOverride.Amount double 0.01 run scoreboard players operation $E0409.MP Temporary *= $E0409.Multiplier Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    playsound entity.allay.ambient_without_item player @a ~ ~ ~ 1.0 2.0
    particle firework ~ ~1 ~ 0.2 0.5 0.2 0.01 20
    particle composter ~ ~1 ~ 0.2 0.5 0.2 0.01 15

# リセット
    scoreboard players reset $E0409.InitialMP
    scoreboard players reset $E0409.MP
    scoreboard players reset $E0409.MinAbsorption
    scoreboard players reset $E0409.MaxAbsorption
    scoreboard players reset $E0409.Multiplier
