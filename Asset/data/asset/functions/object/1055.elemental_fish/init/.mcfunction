#> asset:object/1055.elemental_fish/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1055/init

# 演出
    particle poof ~ ~0.5 ~ 0.1 0.1 0.1 0.05 5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 1.75
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 2

# スピード設定
    data modify storage asset:context this.StepPerTick set value 1
    data modify storage asset:context this.Range set value 1000
    data modify storage asset:context this.MovePerStep set value 0.2

# UserID
    execute store result score @s 1055.OwnerID run data get storage asset:context this.UserID

# 近くの誰かを見る
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~

# 見た目を設定
    execute if data storage asset:context this{Element:Fire} run data modify entity @s item set value {id:"stick",Count:1b,tag:{CustomModelData:20230}}
    execute if data storage asset:context this{Element:Thunder} run data modify entity @s item set value {id:"stick",Count:1b,tag:{CustomModelData:20231}}
    execute if data storage asset:context this{Element:Water} run data modify entity @s item set value {id:"stick",Count:1b,tag:{CustomModelData:20232}}

# 継承
    function asset:object/super.init
