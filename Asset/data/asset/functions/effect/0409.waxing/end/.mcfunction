#> asset:effect/0409.waxing/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0409.waxing/_/end

#> Private
# @private
    #declare score_holder $InitialMP
    #declare score_holder $MP
    #declare score_holder $200

# バリア付与(最低3、最大20)
    execute store result score $InitialMP Temporary run data get storage asset:context this.InitialMP
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP

    scoreboard players operation $MP Temporary -= $InitialMP Temporary
    scoreboard players operation $MP Temporary < $200 Const
    execute if score $MP Temporary matches 1.. run scoreboard players add $MP Temporary 30
    execute if score $MP Temporary matches ..0 run scoreboard players set $MP Temporary 30

    execute store result storage api: Argument.Amount double 0.1 run scoreboard players get $MP Temporary
    data modify storage api: Argument.UUID set value [I;1,3,409,0]
    function api:entity/player/absorption/add

# 演出
    playsound entity.allay.ambient_without_item player @a ~ ~ ~ 1.0 2.0
    particle firework ~ ~1 ~ 0.2 0.5 0.2 0.01 20
    particle composter ~ ~1 ~ 0.2 0.5 0.2 0.01 15

# リセット
    scoreboard players reset $InitialMP Temporary
    scoreboard players reset $MP Temporary
