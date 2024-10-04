#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/dash_start
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick

# こっちを向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~

# モデルを自分の向きに
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~ ~ ~
