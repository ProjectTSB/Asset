#> asset:effect/0408.fueling/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0408.fueling/_/end

#> Private
# @private
    #declare score_holder $E0408.Multiplier
    #declare score_holder $E0408.Magnitude
    #declare score_holder $E0408.MinMagnitude
    #declare score_holder $E0408.MaxMagnitude
    #declare score_holder $E0408.MP
    #declare score_holder $E0408.Border1
    #declare score_holder $E0408.Border2

# 使用時とのMP差に応じた強さのPlayerMotionを適用
    function api:mp/get_current
    execute store result score $E0408.MP Temporary run data get storage api: Return.CurrentMP
    execute store result score $E0408.Magnitude Temporary run data get storage asset:context this.InitialMP
    scoreboard players operation $E0408.Magnitude Temporary -= $E0408.MP Temporary

    #最低MinMagnitudeは飛ぶ
    execute store result score $E0408.MinMagnitude Temporary run data get storage asset:context this.MinMagnitude
    execute if score $E0408.Magnitude Temporary matches 1.. run scoreboard players operation $E0408.Magnitude Temporary += $E0408.MinMagnitude Temporary
    execute if score $E0408.Magnitude Temporary matches ..0 run scoreboard players operation $E0408.Magnitude Temporary = $E0408.MinMagnitude Temporary

    execute store result storage lib: Argument.VectorMagnitude double 0.01 run scoreboard players get $E0408.Magnitude Temporary
    function lib:motion/looking


# 攻撃情報(最低でMinMagnitude * Multiplier)
    execute store result score $E0408.MaxMagnitude Temporary run data get storage asset:context this.MaxMagnitude
    scoreboard players operation $E0408.Magnitude Temporary < $E0408.MaxMagnitude Temporary

    execute store result score $E0408.Multiplier Temporary run data get storage asset:context this.Multiplier
    execute store result storage api: Argument.Damage double 0.01 run scoreboard players operation $E0408.Magnitude Temporary *= $E0408.Multiplier Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier

    function api:damage/single_damage_session/open

# 攻撃範囲も可変
    execute store result score $E0408.Border1 Temporary run data get storage asset:context this.Border.1 2
    execute store result score $E0408.Border2 Temporary run data get storage asset:context this.Border.2 2

    execute if score $E0408.Magnitude Temporary < $E0408.Border1 Temporary positioned ^ ^ ^-2 run function asset:effect/0408.fueling/end/attack/1.m with storage asset:context this.Range
    execute if score $E0408.Magnitude Temporary >= $E0408.Border1 Temporary if score $E0408.Magnitude Temporary < $E0408.Border2 Temporary positioned ^ ^ ^-2 run function asset:effect/0408.fueling/end/attack/2.m with storage asset:context this.Range
    execute if score $E0408.Magnitude Temporary >= $E0408.Border2 Temporary positioned ^ ^ ^-2 run function asset:effect/0408.fueling/end/attack/3.m with storage asset:context this.Range

    function api:damage/reset
    function api:damage/single_damage_session/close

# 共通演出
    playsound entity.firework_rocket.launch player @a ~ ~ ~ 2.0 0.5
    playsound block.note_block.bit player @s ~ ~ ~ 1.0 2.0

# リセット
    scoreboard players reset $E0408.Multiplier
    scoreboard players reset $E0408.Magnitude
    scoreboard players reset $E0408.MinMagnitude
    scoreboard players reset $E0408.MaxMagnitude
    scoreboard players reset $E0408.MP
    scoreboard players reset $E0408.Border1
    scoreboard players reset $E0408.Border2
