#> asset:effect/0416.toaster_shooting/register
#
# パン2枚を連続して射出するEffectを定義する
#
# @within function asset:effect/0416.toaster_shooting/_/register

# 発射中のEffect
    data modify storage asset:effect ID set value 416
    data modify storage asset:effect Name set value '{"text":"パン射出中"}'
    data modify storage asset:effect Description set value ['{"text":"パンを連続して射出する"}']
    data modify storage asset:effect Duration set value 2
    data modify storage asset:effect IsBadEffect set value false
    data modify storage asset:effect RequireClearLv set value 3
    data modify storage asset:effect Visible set value false
