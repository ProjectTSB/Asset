#> asset:object/2083.brimstone/turn
#
# 
#
# @within
#   function asset:object/2083.brimstone/init/
#   function asset:object/2083.brimstone/tick/

$execute if entity @p[scores={UserID=$(TargetPlayerID)},distance=15..] facing entity @p[scores={UserID=$(TargetPlayerID)}] feet run tp @s ~ ~ ~ ~ ~
# $say $(TargetPlayerID)
