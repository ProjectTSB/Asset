#> asset:effect/0408.fueling/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0408.fueling/_/end

#> Private
# @private
    #declare score_holder $Magnitude
    #declare score_holder $500

# tellraw @p {"storage": "asset:context", "nbt": "this.MPUsage"}

# 消費MPの分量に応じた強さのPlayerMotionを適用
    execute store result score $Magnitude Temporary run data get storage asset:context this.MPUsage
    execute store result storage lib: Argument.VectorMagnitude double 0.01 run scoreboard players add $Magnitude Temporary 100
    function lib:motion/looking

# 攻撃情報(最低で200、消費MP1につき+2)
    scoreboard players operation $Magnitude Temporary < $500 Const
    execute store result storage api: Argument.Damage double 2 run scoreboard players get $Magnitude Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier

    function api:damage/single_damage_session/open
# 攻撃範囲も可変
    execute if score $Magnitude Temporary matches 100..199 positioned ^ ^ ^-2 run function asset:effect/0408.fueling/end/attack/1
    execute if score $Magnitude Temporary matches 200..299 positioned ^ ^ ^-4 run function asset:effect/0408.fueling/end/attack/2
    execute if score $Magnitude Temporary matches 300.. positioned ^ ^ ^-6 run function asset:effect/0408.fueling/end/attack/3

    function api:damage/reset
    function api:damage/single_damage_session/close

# 共通演出
    playsound entity.firework_rocket.launch player @a ~ ~ ~ 2.0 0.5
    playsound block.note_block.bit player @s ~ ~ ~ 1.0 2.0

# リセット
    scoreboard players reset $Magnitude Temporary
