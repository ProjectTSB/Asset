#> asset:mob/0263.shulker_bullet/tick/target/fetch
# @within function asset:mob/0263.shulker_bullet/tick/target/

tp @s ~ ~ ~ ~ ~
execute store result storage asset:context this.Target.ID int 1 run scoreboard players get @a[tag=7B.Target,distance=..25,limit=1] UserID
data modify storage asset:context this.Target.Pos set from entity @s Pos
data modify storage asset:context this.Target.Rotation set from entity @s Rotation
kill @s
return 1
