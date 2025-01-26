#> asset:mob/0046.clock_of_despair/tick/skill/common/beam/summon
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/**

#> Val
# @private
#declare tag BeamInit

# 召喚
    summon marker ~ ~ ~ {Tags:["Object","1A.SkillBeam","1A.SkillMarker","BeamInit"]}
    scoreboard players set @e[type=marker,tag=BeamInit,distance=..0.1] 1A.Cooldown 0
    tag @e[type=marker,tag=BeamInit,distance=..0.1] remove BeamInit
