#> asset:mob/1020.wave_attack/summon/init/end
#
#
#
# @within function asset:mob/1020.wave_attack/summon/init/

# 移動
    tp @s ~ ~ ~ ~ ~

# 誰かの方を向く
    execute facing entity @r[distance=..60] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# Init終了
    tag @s remove SC.Init