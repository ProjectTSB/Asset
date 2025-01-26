#> asset:mob/0027.skull_sniper/tick/attack/shot/hit_block
# @within function asset:mob/0027.skull_sniper/tick/attack/shot/rec

# ブロックを破壊する
    execute store success score $R.Temp Temporary if predicate api:area/is_breakable unless block ^ ^ ^ #lib:unbreakable run setblock ^ ^ ^ air destroy

# 破壊できたかチェック
    execute if score $R.Temp Temporary matches 1 store result storage asset:temp Projectile.Pierce int 0.9999999999 run data get storage asset:temp Projectile.Pierce
    execute unless score $R.Temp Temporary matches 1 run data modify storage asset:temp Projectile.Pierce set value -1

# リセット
    scoreboard players reset $R.Temp Temporary
    data remove storage asset:temp Projectile.IsHitBlock
# 破壊できないならストップさせる
    execute if data storage asset:temp Projectile{Pierce:-1} run return 1
