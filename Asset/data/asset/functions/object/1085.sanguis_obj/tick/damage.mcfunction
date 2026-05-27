#> asset:object/1085.sanguis_obj/tick/damage
#
#
#
# @within function asset:object/1085.sanguis_obj/tick/**

#> Private
# @private
    #declare score_holder $UserID
    #declare tag 1085.Player

# プレイヤー特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1085.Player
    scoreboard players reset $UserID Temporary
# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute if data storage asset:context this.AdditionalMPHeal run data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
# modifier をかける
    execute as @a[tag=1085.Player] run function api:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..1.2] run function api:damage/
    function api:damage/reset

# タグ削除
    tag @a[tag=1085.Player] remove 1085.Player
