#> asset:mob/1004.tultaria/tick/skill/common/shot/summon
#
# 赤い自機狙い弾を放つ。弾の性質は技のほうで設定すること。
#
# @within function asset:mob/1004.tultaria/tick/skill/**

#> 行き先マーカー
# @private
#declare tag FacingMarker

# 拡散
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 召喚
    data modify storage api: Argument.ID set value 2027
    function api:object/summon

# リセット
    kill @e[type=marker,tag=FacingMarker]

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2
