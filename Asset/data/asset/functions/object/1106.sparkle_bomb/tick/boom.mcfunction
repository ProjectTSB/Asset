#> asset:object/1106.sparkle_bomb/tick/boom
#
#
#
# @within function asset:object/1106.sparkle_bomb/tick/

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle firework ~ ~ ~ 0 0 0 0.3 45 force @a[distance=..48]
    particle dust 0.2 1 1 1.5 ~ ~ ~ 1 1 1 0 40 force @a[distance=..48]
    particle scrape ~ ~ ~ 0 0 0 10 70 force @a[distance=..48]
    particle flash ~ ~ ~ 0 0 0 0 1 force @a[distance=..48]
    playsound ogg:mob.breeze.death1 neutral @a ~ ~ ~ 0.6 1.6
    playsound ogg:mob.breeze.death1 neutral @a ~ ~ ~ 0.6 1.5
    playsound entity.firework_rocket.twinkle neutral @a ~ ~ ~ 0.5 1.6

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-2.0 ~-2.0 ~-2.0 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=3.0,dy=3.0,dz=3.0] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    execute on vehicle run kill @s
    kill @s
