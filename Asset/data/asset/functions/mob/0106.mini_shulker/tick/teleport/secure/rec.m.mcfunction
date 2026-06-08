#> asset:mob/0106.mini_shulker/tick/teleport/secure/rec.m
# @input args Direction : string
# @within function
#   asset:mob/0106.mini_shulker/tick/teleport/secure/start_rec.m
#   asset:mob/0106.mini_shulker/tick/teleport/secure/rec.m

# 安全な壁ならTP候補に追加
    $execute if block ~ ~ ~ #lib:no_collision/ unless block $(Direction) #lib:no_collision/ summon marker run function asset:mob/0106.mini_shulker/tick/teleport/secure/append

# RemainingRangeを減らす
    execute store result storage asset:temp 2Y.Secure.RemainingRange int 0.9999999999 run data get storage asset:temp 2Y.Secure.RemainingRange 1
# 再帰
    $execute unless data storage asset:temp 2Y.Secure{RemainingRange:0} positioned $(Direction) run function asset:mob/0106.mini_shulker/tick/teleport/secure/rec.m with storage asset:temp 2Y.Secure
