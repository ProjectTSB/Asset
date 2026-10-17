#> asset:artifact/1619.volt_rave/release_using_item/3.main
#
#
#
# @within function asset:artifact/1619.volt_rave/release_using_item/2.check_condition

# 最大射程 (射程x2を設定)
    scoreboard players set $MaxRange Temporary 50

# スタック取得
    data modify storage api: Argument.ID set value 394
    function api:entity/mob/effect/get/from_id

# sound
    execute if data storage api: Return.Effect{Stack:1} anchored eyes positioned ^ ^ ^1 run function asset:artifact/1619.volt_rave/release_using_item/sound/normal
    execute if data storage api: Return.Effect{Stack:2} anchored eyes positioned ^ ^ ^1 run function asset:artifact/1619.volt_rave/release_using_item/sound/full_charge

# 前方に再帰
    scoreboard players operation $Range Temporary = $MaxRange Temporary
    execute anchored eyes positioned ^-0.3 ^-0.2 ^ run function asset:artifact/1619.volt_rave/release_using_item/recursive

# 演出用Object召喚
    function asset:artifact/1619.volt_rave/release_using_item/summon_object

# チャージバフ消し
    function asset:artifact/1619.volt_rave/release_using_item/remove_charge

# リセット
    scoreboard players reset $Range Temporary
    scoreboard players reset $MaxRange Temporary
