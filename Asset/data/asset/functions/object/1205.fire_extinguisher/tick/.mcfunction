#> asset:object/1205.fire_extinguisher/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1205/tick

# supe.tick
    function asset:object/super.tick

# 少しずつ弾速を落としていく
    execute unless data storage asset:context this{Speed:1} store result storage asset:context this.Speed int 0.9999999999 run data get storage asset:context this.Speed
