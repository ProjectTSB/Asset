#> asset:object/1087.spinnrade/recursive/homing/
#
#
#
# @within function asset:object/1087.spinnrade/recursive/

#> Private
# @private
    #declare tag 1087.TargetCandidate

# ターゲットがいればそいつを狙い、ターゲットがいなければ、前の近くの敵を狙う
    execute if data storage asset:context this.TargetMobUUID run function asset:object/1087.spinnrade/recursive/homing/check_target.m with storage asset:context this
    execute unless entity @e[type=#lib:living_without_player,tag=1087.TargetCandidate,distance=..30] positioned ^ ^ ^15 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..15] add 1087.TargetCandidate
    execute facing entity @e[type=#lib:living,tag=1087.TargetCandidate,distance=..15,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-600 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    tag @e[type=#lib:living,tag=1087.TargetCandidate,distance=..50] remove 1087.TargetCandidate
