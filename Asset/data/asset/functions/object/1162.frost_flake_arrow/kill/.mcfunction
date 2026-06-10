#> asset:object/1162.frost_flake_arrow/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1162/kill

# ダメージ増加
    function asset:object/1162.frost_flake_arrow/baf/bloomdamage
# 二段目のダメージが設定されてればObject召喚
    execute if data storage asset:context this.BloomDamage run function asset:object/1162.frost_flake_arrow/kill/object_summon

# 消滅
    kill @s
