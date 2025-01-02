#> asset:mob/0027.skull_sniper/tick/target/fetch
# @within function asset:mob/0027.skull_sniper/tick/target/

execute store result storage asset:context this.Target.ID int 1 run scoreboard players get @a[tag=R.Target,distance=..55,limit=1] UserID
return 1
