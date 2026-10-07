#> asset:object/1153.flare_butterfly/tick/move/chase_enemy/chase.m
#
# @input args:
#   TargetMobUUID : int
# @within function asset:object/1153.flare_butterfly/tick/move/chase_enemy/m

# 対象の方へ向きだけ追尾する
    $execute facing entity @e[type=#lib:living_without_player,scores={MobUUID=$(TargetMobUUID)},distance=..20,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-250 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# 標的方向と前方向がほぼ打ち消し合う場合は、向きを約1度ずらす
    $execute at @s facing entity @e[type=#lib:living_without_player,scores={MobUUID=$(TargetMobUUID)},distance=..20,limit=1] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^1 if entity @s[distance=..0.1] at @s positioned ^-0.01745 ^ ^-1 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# ブロックとの衝突を考慮して前進する
    data modify storage lib: Argument.SlideMove.Speed set from storage asset:context this.ChaseSpeed
    execute at @s run function lib:slide_move/
