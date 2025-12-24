#> asset:object/1064.fire_of_rebirth/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1064/kill

#> private
# @private
    #declare score_holder $TK.UserID

# ブロック衝突時、エンティティヒット時で同じ処理をするのでここでダメージ処理

# 演出
    function asset:object/1064.fire_of_rebirth/kill/vfx

# ダメージ処理
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute store result score $TK.UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score $TK.UserID Temporary = @s UserID run function api:damage/modifier
    execute positioned ~-2 ~-2 ~-2 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=3,dy=3,dz=3] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $TK.UserID Temporary
# 消滅
    kill @s
