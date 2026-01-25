#> asset:object/1040.thelema_persuit_sword/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1040/kill

#> Private
# @private
    #declare tag 1040.Already
    #declare score_holder $UserID

# tickとhit_blockメソッドから2回呼ばれる可能性があるため1度だけ実行されるように対策する

# 実行済みならreturn
    execute if entity @s[tag=1040.Already] run return 0

# 自身に実行済みTag付与
    tag @s add 1040.Already

# 演出
    execute positioned ~ ~0.3 ~ rotated ~ 0 run function asset:object/1040.thelema_persuit_sword/kill/vfx
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 0.7 0
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 1 0
    playsound block.amethyst_cluster.step neutral @a ~ ~ ~ 1 1.3 0

# UserID取得
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    execute positioned ~-1 ~ ~-1 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=ExtendedCollision,dx=1,dy=2,dz=1,sort=nearest,limit=1] store result storage api: Argument.Damage double 0.2 run data get storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute if data storage api: Argument.Damage positioned ~-1 ~ ~-1 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=1,dy=2,dz=1,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    kill @s
