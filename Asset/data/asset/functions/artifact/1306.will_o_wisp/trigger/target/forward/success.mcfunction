#> asset:artifact/1306.will_o_wisp/trigger/target/forward/success
#
#
#
# @within function asset:artifact/1306.will_o_wisp/trigger/target/forward/check_through

# 自身にtagを付与
    tag @s add 10A.Target

# 成功済み判定用storageを設定
    data modify storage asset:temp Success set value true
