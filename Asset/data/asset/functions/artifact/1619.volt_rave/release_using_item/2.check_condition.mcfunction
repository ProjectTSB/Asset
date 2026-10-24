#> asset:artifact/1619.volt_rave/release_using_item/2.check_condition
#
#
#
# @within function asset:artifact/1619.volt_rave/release_using_item/1.trigger

# チャージ用Effectがあればok
# あるということは、それが使える状態(信仰など問題なし)ということ
    data modify storage api: Argument.ID set value 394
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run return fail

# 3.main.mcfunctionを実行する
    function asset:artifact/1619.volt_rave/release_using_item/3.main
