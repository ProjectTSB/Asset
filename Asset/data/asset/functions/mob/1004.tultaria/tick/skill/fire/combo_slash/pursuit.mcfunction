#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/pursuit
#
# 対象を追いかけ回す
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick

# モデルを自分の向きに
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~ ~ ~

# ホーミング移動
    execute facing entity @p feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# パーティクル
    #execute positioned ~ ~-0.2 ~ if predicate lib:random_pass_per/30 rotated ~ 0 run particle minecraft:flame ^ ^ ^-0.2 0.02 0.02 0.02 0 1

# 接地で上を向く
    execute positioned ~ ~ ~ unless block ~ ~-1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-5
    execute positioned ~ ~2 ~ unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~5

# 演出
    particle minecraft:flame ~ ~1.2 ~ 0.3 0.7 0.3 0.01 2
    particle minecraft:smoke ~ ~1.2 ~ 0.3 0.7 0.3 0.01 2
