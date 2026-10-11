#> asset:effect/0409.waxing/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0409.waxing/_/end

# バリア付与
    execute store result storage api: Argument.Amount double 0.1 run data get storage asset:context this.MPHealed
    data modify storage api: Argument.UUID set value [I;1,3,409,0]
    function api:entity/player/absorption/add

# 演出
    playsound entity.allay.ambient_without_item player @a ~ ~ ~ 1.0 2.0
    particle firework ~ ~1 ~ 0.2 0.5 0.2 0.01 20
    particle composter ~ ~1 ~ 0.2 0.5 0.2 0.01 15
