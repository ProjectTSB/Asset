#> asset:mob/1004.tultaria/tick/skill/water/spin_slash/active
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/spin_slash/tick

# こっちを向く
    execute facing entity @p[gamemode=!spectator,distance=..128] feet run tp @s ~ ~ ~ ~ ~

# モデルを自分の向きに
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] ~ ~ ~ ~ ~

# ユーザーIDをフィールドにいれる
#    execute store result storage asset:context this.TargetID int 1 run scoreboard players get @p[distance=..64] UserID
