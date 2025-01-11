#> asset:object/2006.reflect_thunder/tick/summon
#
# サンダー召喚
#
# @within function asset:object/2006.reflect_thunder/tick/

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2004
    function api:object/summon
