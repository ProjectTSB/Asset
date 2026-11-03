#> asset:artifact/1646.laser_pointer/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1646.laser_pointer/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
# CDを無視して前方をチェック、視点先の敵にHitタグをつける
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1646.laser_pointer/trigger/rec

# 対象がすでにEffect420を持っているならスタックを重ねる
    data modify storage api: Argument.ID set value 420
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=1646.Hit,tag=!Uninterferable,distance=..5] run function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect as @e[type=#lib:living_without_player,tag=Enemy,tag=1646.Hit,tag=!Uninterferable,distance=..5] if function asset:artifact/1646.laser_pointer/trigger/apply_effect run tag @p[tag=this] remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1646.laser_pointer/trigger/3.main

# 判定用のタグを消す
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=1646.Hit,distance=..5] remove 1646.Hit
