#> asset:object/1040.thelema_persuit_sword/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1040/kill

#> Private
# @private
    #declare tag 1040.Already

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

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute at @a if score @s 1040.UserID = @p UserID as @p run function api:damage/modifier
    execute if data storage api: Argument.Damage positioned ~-1 ~ ~-1 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=1,dy=2,dz=1,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
