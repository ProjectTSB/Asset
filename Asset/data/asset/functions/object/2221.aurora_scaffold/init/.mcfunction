#> asset:object/2221.aurora_scaffold/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2221/init

#> Private
# @private
    #declare tag 2221.This

# 自身を判別するTag
    tag @s add 2221.This

# セーフティ：破壊可能エリアでなければreturnして消滅
    execute unless predicate api:area/is_breakable run return run kill @s

# 強制的にブロックの中心へと移動
    execute align xyz run tp @s ~0.5 ~0.5 ~0.5

# 現座標が#no_collision_without_fluidでなければreturnして消滅
    execute at @s unless block ~ ~ ~ #lib:no_collision_without_fluid run return run kill @s

# 同座標に同Objectがいればreturnして消滅
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=item_display,tag=!2221.This,scores={ObjectID=2221},dx=0,limit=1] run return run kill @s

# 水色のステンドグラスを設置
    setblock ~ ~ ~ cyan_stained_glass

# リセット
    tag @s remove 2221.This
