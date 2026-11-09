#> asset:artifact/1646.laser_pointer/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1646.laser_pointer/trigger/1.trigger

#> private
# @private
    #declare score_holder $A1646.UserID

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
# CDを無視して前方をチェック、視点先の敵にHitタグをつける
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1646.laser_pointer/trigger/rec

# 対象がすでに使用者に付与されたEffect420を持っているならスタックを重ねる
    data modify storage api: Argument.ID set value 420
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=A1646.Hit,tag=!Uninterferable,distance=..10] run function api:entity/mob/effect/get/from_id
    execute store result score $A1646.UserID Temporary run data get storage api: Return.Effect.Field.OriginID
    execute if data storage api: Return.Effect if score @s UserID = $A1646.UserID Temporary as @e[type=#lib:living_without_player,tag=Enemy,tag=A1646.Hit,tag=!Uninterferable,distance=..10] if function asset:artifact/1646.laser_pointer/trigger/apply_effect run tag @p[tag=this] remove CanUsed
    # 使用者でないならキャンセル
    execute if data storage api: Return.Effect unless score @s UserID = $A1646.UserID Temporary run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1646.laser_pointer/trigger/3.main

# リセット
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=A1646.Hit,distance=..10] remove A1646.Hit
    scoreboard players reset $A1646.UserID
