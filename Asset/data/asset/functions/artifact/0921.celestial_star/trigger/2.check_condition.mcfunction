#> asset:artifact/0921.celestial_star/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0921.celestial_star/trigger/1.trigger

# 設置中の星があれば、共通の条件確認より先に起爆する
# 設置時に始まったクールダウン中でも起爆できるようにするため
# 起爆した星が対象を処理している間は、何もしない
    data modify storage api: Argument.ID set value 402
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect.Field.Detonation run return fail
    execute if data storage api: Return.Effect run return run function asset:artifact/0921.celestial_star/trigger/detonate/

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 夜でなければ設置できない
    execute if entity @s[tag=CanUsed] unless predicate lib:is_night run function lib:message/artifact/condition_not_met
    execute unless predicate lib:is_night run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0921.celestial_star/trigger/3.main
