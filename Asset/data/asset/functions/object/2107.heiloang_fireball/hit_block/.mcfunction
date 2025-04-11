#> asset:object/2107.heiloang_fireball/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2107/hit_block

# 攻撃用AEC召喚
    data modify storage api: Argument.ID set value 2108
    execute if entity @s[tag=2107.IsDark] run data modify storage api: Argument.FieldOverride.IsDark set value true
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    # 攻撃元の特定用にUUIDを引き継ぎ
        data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    execute positioned ~ ~0.3 ~ run function api:object/summon

# ヒット演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.7
    particle explosion ~ ~2 ~ 2 1 2 0 20

# 着弾時の消滅処理
    kill @s
