#> asset:object/1131.red_knight_slash_shot/hit_entity/
#
#
#
# @within function asset:object/alias/1131/hit_entity

#> private
# @private
    #declare score_holder $UserID
    #declare tag 1131.Player

# ダメージ値設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage

# ユーザー特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1131.Player
    scoreboard players reset $UserID Temporary

# MP回復量を移す(未使用項目だが、調整次第では入るかもなので、残しておく)
#    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal

# ダメージの属性をセット
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"

# modifier をかける
    execute as @p[tag=1131.Player,distance=..64] run function api:damage/modifier

# 多重ヒット防止判定部分でタグを付与した対象にダメージを与える
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5] run function asset:object/1131.red_knight_slash_shot/hit_entity/damage

# リセット
    function api:damage/reset
    tag @p[tag=1131.Player,distance=..64] remove 1131.Player
    #tag @e[type=#lib:living_without_player,tag=Enemy,tag=1131.TargetEntity,distance=..16] remove 1131.TargetEntity
