#> asset:object/2074.water_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2074/init

# 予告を召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Tick:30,Color:2851071,Scale:[4.5f,4.5f,0.01f]}
    function api:object/summon

# 魔法陣を召喚
    function asset:object/2074.water_magic/init/summon_circle
