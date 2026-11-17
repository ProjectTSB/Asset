#> asset:object/1218.aqua_bullet/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1218/kill

#> Private
# @private
    #declare score_holder $O1218.UserID

# 演出
    particle splash ~ ~ ~ 0.2 0.2 0.2 0 20 normal @a
    playsound entity.player.splash.high_speed neutral @a ~ ~ ~ 0.4 2

# UserID取得
    execute store result score $O1218.UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @a if score @s UserID = $O1218.UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,sort=random,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $O1218.UserID

# kill
    kill @s
