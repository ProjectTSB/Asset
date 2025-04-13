#> asset:object/1042.mini_black_hole_flying/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1042/kill

# ブラックホール(吸い込み)を召喚
    data modify storage api: Argument.ID set value 1043
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    function api:object/summon

# 消滅
    kill @s
