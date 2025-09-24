#> asset:mob/0311.blazing_inferno/tick/skill/summon_minion/summon
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/spread

# 召喚
    data modify storage api: Argument.ID set value 313
    function api:mob/summon

# ブレイズが飛びかかってくる
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute as @e[type=blaze,distance=..0.1,sort=nearest,limit=1] facing entity @r[gamemode=!spectator,distance=..64] feet run function lib:motion/
    data remove storage lib: Argument

# テレポート演出を流用
    execute positioned ~ ~1 ~ run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx
