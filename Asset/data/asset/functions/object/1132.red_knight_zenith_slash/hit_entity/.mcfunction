#> asset:object/1132.red_knight_zenith_slash/hit_entity/
#
#
#
# @within function asset:object/alias/1132/hit_entity

#> private
# @private
    #declare score_holder $Interval
    #declare score_holder $UserID
    #declare tag 1132.Player

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# ダメージ値設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage

# ユーザー特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1132.Player
    scoreboard players reset $UserID Temporary

# MP回復量を移す(未使用項目だが、調整次第では入るかもなので、残しておく)
#    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal

# ダメージの属性をセット
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"

# modifier をかける
    execute as @p[tag=1132.Player,distance=..64] run function api:damage/modifier

# ダメージ実行
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run function api:damage/

# リセット
    function api:damage/reset
    scoreboard players reset $Interval Temporary
    tag @p[tag=1132.Player,distance=..64] remove 1132.Player

# Super
    function asset:object/super.method
