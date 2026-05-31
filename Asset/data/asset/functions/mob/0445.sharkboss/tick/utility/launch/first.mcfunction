#> asset:mob/0445.sharkboss/tick/utility/launch/first
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

    function asset:mob/0445.sharkboss/tick/utility/launch/behaviors/
    scoreboard players set @s CD.Player.LaunchCounter 0
    tag @s remove CD.Player.Launch.First
    tag @s add CD.Player.Launch.Second
