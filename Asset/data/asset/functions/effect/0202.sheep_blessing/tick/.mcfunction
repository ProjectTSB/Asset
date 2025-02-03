#> asset:effect/0202.sheep_blessing/tick/
# @within function asset:effect/0202.sheep_blessing/_/tick

# 破壊可能エリアかつスペクテイターでなければ羊毛の床を設置
    execute if predicate api:area/is_breakable if entity @s[gamemode=!spectator] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_wool keep
