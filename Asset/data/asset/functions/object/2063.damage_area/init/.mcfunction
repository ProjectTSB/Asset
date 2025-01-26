#> asset:object/2063.damage_area/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2063/init

# 設定項目（FieldOverride）
    # Color : エフェクトの色。leather_horse_armorの色であるため、16777215が白。
    # Scale : エフェクトの大きさ。[5f,5f,0.01f]がデフォルト。
    # Tick : 何Tick後にダメージを与えるかを指定する。ただしこのオブジェクトはあくまでも見た目だけなのでダメージ処理は自前で。

# 外円にmergeを行う
    data modify storage asset:temp 2063.item.tag.display.color set from storage asset:context this.Color
    data modify storage asset:temp 2063.transformation.scale set from storage asset:context this.Scale
    data modify entity @s {} merge from storage asset:temp 2063

# Scaleの計算を行う
# asset:context this にScale.Tickを代入
    execute store result score @s 2063.Scale.Tick run data get storage asset:context this.Scale[0] 1000
    execute store result score $2063.Temp Temporary run data get storage asset:context this.Tick
    execute store result storage asset:context this.ScaleTick int 1 run scoreboard players operation @s 2063.Scale.Tick /= $2063.Temp Temporary

# 内円にmergeを先に行っておく
    scoreboard players set @s 2063.Scale.Tick 0
    data modify storage asset:temp 2063.interpolation_duration set value 2
    data modify storage asset:temp 2063.start_interpolation set value 0
    data modify storage asset:context this.Merge set from storage asset:temp 2063

# データリセット
    scoreboard players reset $2063.Temp Temporary
    data remove storage asset:temp 2063
