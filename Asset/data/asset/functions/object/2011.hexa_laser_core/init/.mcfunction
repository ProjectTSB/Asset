#> asset:object/2011.hexa_laser_core/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2011/init

# 位置調整
    tp @s ~ ~ ~ 0 90

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2009
    function api:object/summon
