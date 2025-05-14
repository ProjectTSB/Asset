#> asset:object/1009.arrow/hit_entity/from_player/as_target
#
#
#
# @within function asset:object/1009.arrow/hit_entity/from_player/

#> Private
# @private
    #declare score_holder $UserID
    #declare tag 1009.Player

# プレイヤー特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1009.Player
    scoreboard players reset $UserID Temporary
# PreHit メソッド呼び出し
    execute as @e[type=item_display,tag=this,distance=..0.1] positioned ~-0.3 ~-0.3 ~-0.3 at @e[type=#lib:living,tag=1009.Target,dx=0] run function asset:object/call.m {method:pre_hit}
# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context this.ElementType
    execute if data storage asset:context this.AdditionalMPHeal run data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
# modifier をかける
    execute as @a[tag=1009.Player] run function api:damage/modifier
# ダメージを与える
    function api:damage/
    function api:damage/reset

# タグ削除
    tag @a[tag=1009.Player] remove 1009.Player
    tag @s remove 1009.Target
