#> asset:mob/0263.shulker_bullet/tick/target/fetch
# @within function asset:mob/0263.shulker_bullet/tick/target/

tp @s ~ ~ ~ ~ ~
data modify storage asset:context this.Target.Pos set from entity @s Pos
data modify storage asset:context this.Target.Rotation set from entity @s Rotation
kill @s
return 1
