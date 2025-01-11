#> asset:object/2005.thunder_bomb/tick/thunder_summon/summon
#
# サンダー召喚
#
# @within function asset:object/2005.thunder_bomb/tick/**

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2004
    function api:object/summon
