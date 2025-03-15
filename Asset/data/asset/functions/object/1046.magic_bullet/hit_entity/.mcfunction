#> asset:object/1046.magic_bullet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1046/hit_entity

#> Private
# @private
    #declare tag Owner
    #declare score_holder $UserID

# 使用者特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner

# 多重ヒット防止判定
# 敵味方関係なくチェックする
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,tag=!Uninterferable,dx=0] run function asset:object/1046.magic_bullet/hit_entity/check_target/

# プレイヤー以外に対するダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.ToNonPlayer
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=Owner] run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=1046.TargetEntity,dx=0] run function api:damage/
    function api:damage/reset

# プレイヤーに対するダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.ToPlayer
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=Owner] run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=player,tag=1046.TargetEntity,tag=!PlayerShouldInvulnerable,tag=!Owner,dx=0] run function api:damage/
    function api:damage/reset

# プレイヤーを狙った弾かつOwnerがいればOwnerにダメージ
    execute if data storage asset:context this{AimToPlayer:true} positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=Owner,tag=1046.TargetEntity,tag=!PlayerShouldInvulnerable,dx=0] run function asset:object/1046.magic_bullet/hit_entity/self_damage

# リセット
    tag @p[tag=Owner] remove Owner
    tag @e[type=#lib:living,tag=1046.TargetEntity,tag=!Uninterferable,distance=..5] remove 1046.TargetEntity
    scoreboard players reset $UserID Temporary
