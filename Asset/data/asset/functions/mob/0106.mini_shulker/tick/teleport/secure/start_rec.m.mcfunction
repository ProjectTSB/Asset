#> asset:mob/0106.mini_shulker/tick/teleport/secure/start_rec.m
# @input args
#   Direction : string
#   RelativePos : string
#   Transformation : float[]
# @within function asset:mob/0106.mini_shulker/tick/teleport/secure/

# データを設定
    data modify storage asset:temp 2Y.Secure.RemainingRange set from storage asset:temp 2Y.Range
    $data modify storage asset:temp 2Y.Secure.Direction set value "$(Direction)"
    $data modify storage asset:temp 2Y.Secure.RelativePos set value "$(RelativePos)"
    $data modify storage asset:temp 2Y.Secure.Transformation set value $(Transformation)

# 再帰を開始
    function asset:mob/0106.mini_shulker/tick/teleport/secure/rec.m with storage asset:temp 2Y.Secure

# リセット
    data remove storage asset:temp 2Y.Secure
