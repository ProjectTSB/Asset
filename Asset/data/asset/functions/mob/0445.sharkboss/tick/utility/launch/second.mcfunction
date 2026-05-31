#> asset:mob/0445.sharkboss/tick/utility/launch/second
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/

    function asset:mob/0445.sharkboss/tick/utility/launch/behaviors/
    tag @s remove CD.Player.Launch.Second
    tag @s remove CD.Player.Launch.HorizontalLight
    tag @s remove CD.Player.Launch.HorizontalNormal
    tag @s remove CD.Player.Launch.HorizontalStrong
    tag @s remove CD.Player.Launch.VerticalLight
    tag @s remove CD.Player.Launch.VerticalNormal
    tag @s remove CD.Player.Launch.VerticalStrong
    scoreboard players set @s CD.Player.LaunchCounter 0
