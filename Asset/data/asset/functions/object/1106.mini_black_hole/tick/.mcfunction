#> asset:object/1106.mini_black_hole/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1106/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
# 水中でも止まらないようにする
    # data modify storage lib: Argument.VectorMagnitude set value 0.75d
    # execute on vehicle run function lib:motion/
    # data remove storage lib: Argument

# タグ付け
    execute store result score $UQ.Temp Temporary run data get storage asset:context this.OwnerID
    execute as @a if score @s UserID = $UQ.Temp Temporary run tag @s add UQ.Owner
    execute unless entity @a[tag=UQ.Owner,limit=1] run return run kill @s

# 起爆判定
    execute unless score @s General.Object.Tick matches 1.. unless predicate lib:is_vehicle run scoreboard players set @s General.Object.Tick 1
    execute if score @s General.Object.Tick matches 1.. on vehicle run kill @s

# 起爆前
    execute unless score @s General.Object.Tick matches 1.. run function asset:object/1106.mini_black_hole/tick/fly
# 起爆
    execute if score @s General.Object.Tick matches 1.. run function asset:object/1106.mini_black_hole/tick/explode/

# 消滅判定
    execute if score @s General.Object.Tick matches 80.. run kill @s
# リセット
    tag @a[tag=UQ.Owner] remove UQ.Owner
