#> asset:object/2083.brimstone/turn
#
#
#
# @within
#   function asset:object/2083.brimstone/init/
#   function asset:object/2083.brimstone/tick/

$execute if entity @p[gamemode=!spectator,scores={UserID=$(TargetPlayerID)},distance=20..] facing entity @p[gamemode=!spectator,scores={UserID=$(TargetPlayerID)}] feet run tp @s ~ ~ ~ ~ ~
    # $say $(TargetPlayerID)
