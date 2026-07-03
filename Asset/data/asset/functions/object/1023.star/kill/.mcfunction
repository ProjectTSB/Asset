#> asset:object/1023.star/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1023/kill

#> Private
# @private
    #declare score_holder $UserID

# 演出
    playsound block.beacon.deactivate neutral @a ~ ~ ~ 0.8 0.8 0
    particle dust 0 1 1 2 ~ ~ ~ 0.4 0.4 0.4 0 15 normal @a
    particle scrape ~ ~ ~ 0.5 0.5 0.5 0 30 normal @a

# 鈍足を1秒付与
    effect give @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] slowness 1 1 true

# UserID
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
    scoreboard players reset $UserID Temporary
