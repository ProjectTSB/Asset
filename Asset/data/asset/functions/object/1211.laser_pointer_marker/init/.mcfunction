#> asset:object/1211.laser_pointer_marker/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1211/init

# Fieldをスコアに
    execute store result score @s 1211.MobUUID run data get storage asset:context this.UUID
