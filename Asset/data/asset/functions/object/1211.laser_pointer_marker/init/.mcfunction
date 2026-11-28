#> asset:object/1211.laser_pointer_marker/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1211/init

# Fieldをスコアに
    execute store result score @s General.Object.Tick run data get storage asset:context this.Tick
    execute store result score @s O1211.MobUUID run data get storage asset:context this.UUID
