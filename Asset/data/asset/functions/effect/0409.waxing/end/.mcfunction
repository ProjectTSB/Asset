#> asset:effect/0409.waxing/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0409.waxing/_/end

#> Private
# @private
    #declare score_holder $MPHealed
    #declare score_holder $200

# バリア付与(最大20)
    execute store result score $MPHealed Temporary run data get storage asset:context this.MPHealed
    scoreboard players operation $MPHealed Temporary < $200 Const
    execute store result storage api: Argument.Amount double 0.1 run scoreboard players get $MPHealed Temporary
    data modify storage api: Argument.UUID set value [I;1,3,409,0]
    function api:entity/player/absorption/add

# 演出
    playsound entity.allay.ambient_without_item player @a ~ ~ ~ 1.0 2.0
    particle firework ~ ~1 ~ 0.2 0.5 0.2 0.01 20
    particle composter ~ ~1 ~ 0.2 0.5 0.2 0.01 15

# リセット
    scoreboard players reset $MPHealed Temporary
