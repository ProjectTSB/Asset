#> asset:effect/0408.fueling/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0408.fueling/_/end

#> Private
# @private
    #declare score_holder $E0408.Magnitude
    #declare score_holder $500
    #declare score_holder $E0408.MP

# 使用時とのMP差に応じた強さのPlayerMotionを適用
    function api:mp/get_current
    execute store result score $E0408.MP Temporary run data get storage api: Return.CurrentMP
    execute store result score $E0408.Magnitude Temporary run data get storage asset:context this.InitialMP
    scoreboard players operation $E0408.Magnitude Temporary -= $E0408.MP Temporary

    #最低100は飛ぶ
    execute if score $E0408.Magnitude Temporary matches 1.. run scoreboard players add $E0408.Magnitude Temporary 100
    execute if score $E0408.Magnitude Temporary matches ..0 run scoreboard players set $E0408.Magnitude Temporary 100

    execute store result storage lib: Argument.VectorMagnitude double 0.01 run scoreboard players get $E0408.Magnitude Temporary
    function lib:motion/looking

# 攻撃情報(最低で200、MP差1につき+2)
    scoreboard players operation $E0408.Magnitude Temporary < $500 Const
    execute store result storage api: Argument.Damage double 2 run scoreboard players get $E0408.Magnitude Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier

    function api:damage/single_damage_session/open
# 攻撃範囲も可変
    execute if score $E0408.Magnitude Temporary matches 100..199 positioned ^ ^ ^-2 run function asset:effect/0408.fueling/end/attack/1
    execute if score $E0408.Magnitude Temporary matches 200..299 positioned ^ ^ ^-4 run function asset:effect/0408.fueling/end/attack/2
    execute if score $E0408.Magnitude Temporary matches 300.. positioned ^ ^ ^-6 run function asset:effect/0408.fueling/end/attack/3

    function api:damage/reset
    function api:damage/single_damage_session/close

# 共通演出
    playsound entity.firework_rocket.launch player @a ~ ~ ~ 2.0 0.5
    playsound block.note_block.bit player @s ~ ~ ~ 1.0 2.0

# リセット
    scoreboard players reset $E0408.Magnitude Temporary
    scoreboard players reset $E0408.MP Temporary
