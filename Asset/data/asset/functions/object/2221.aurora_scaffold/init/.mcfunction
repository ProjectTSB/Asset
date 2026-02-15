#> asset:object/2221.aurora_scaffold/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2221/init

#> Private
# @private
    #declare tag 2221.This

# セーフティ：破壊可能エリアでなければreturnして消滅
    execute unless predicate api:area/is_breakable run return run kill @s

# 自身を判別するTag
    tag @s add 2221.This

# 自身のIDを設定
    execute store result storage asset:context this.ID int 1 run random value 0..2147483646

# Tickをスコアへ入れておく
    execute store result score @s General.Object.Tick run data get storage asset:context this.Tick

# 強制的にブロックの中心へと移動
    execute align xyz run tp @s ~0.5 ~0.5 ~0.5

# 3x3の範囲がそれぞれブロックでなければ水色のステンドグラスを設置
    execute at @s positioned ~ ~ ~ if block ~ ~ ~ #lib:no_collision/without_fluid run setblock ~ ~ ~ cyan_stained_glass
    execute at @s positioned ~1 ~ ~ if block ~ ~ ~ #lib:no_collision/without_fluid run setblock ~ ~ ~ cyan_stained_glass
    execute at @s positioned ~1 ~ ~1 if block ~ ~ ~ #lib:no_collision/without_fluid run setblock ~ ~ ~ cyan_stained_glass
    execute at @s positioned ~1 ~ ~-1 if block ~ ~ ~ #lib:no_collision/without_fluid run setblock ~ ~ ~ cyan_stained_glass
    execute at @s positioned ~-1 ~ ~ if block ~ ~ ~ #lib:no_collision/without_fluid run setblock ~ ~ ~ cyan_stained_glass
    execute at @s positioned ~-1 ~ ~1 if block ~ ~ ~ #lib:no_collision/without_fluid run setblock ~ ~ ~ cyan_stained_glass
    execute at @s positioned ~-1 ~ ~-1 if block ~ ~ ~ #lib:no_collision/without_fluid run setblock ~ ~ ~ cyan_stained_glass
    execute at @s positioned ~ ~ ~1 if block ~ ~ ~ #lib:no_collision/without_fluid run setblock ~ ~ ~ cyan_stained_glass
    execute at @s positioned ~ ~ ~-1 if block ~ ~ ~ #lib:no_collision/without_fluid run setblock ~ ~ ~ cyan_stained_glass

# 同座標に同Objectがいればreturnして消滅
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=item_display,tag=!2221.This,scores={ObjectID=2221},dx=0,limit=1] run return run kill @s

# リセット
    tag @s remove 2221.This
