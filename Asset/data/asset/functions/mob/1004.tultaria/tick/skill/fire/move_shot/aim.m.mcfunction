#> asset:mob/1004.tultaria/tick/skill/fire/move_shot/aim.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/move_shot/tick

# モデルをプレイヤーに向ける
    $execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] facing entity @p[gamemode=!spectator,scores={UserID=$(TargetID)},distance=..128] eyes run tp @s ~ ~ ~ ~ 0

# 移動終了後こっちを向く
    $execute facing entity @p[gamemode=!spectator,scores={UserID=$(TargetID)},distance=..128] feet run tp @s[scores={General.Mob.Tick=10}] ~ ~ ~ ~ ~
