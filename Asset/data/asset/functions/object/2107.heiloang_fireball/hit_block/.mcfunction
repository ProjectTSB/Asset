#> asset:object/2107.heiloang_fireball/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2107/hit_block

# 攻撃用AEC召喚
    data modify storage api: Argument.ID set value 2108
    # 攻撃元の特定用にUUIDを引き継ぎ
        data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    function api:object/summon

# 着弾時の消滅処理
    kill @s
