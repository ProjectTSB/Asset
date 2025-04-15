#> asset:object/1143.arrow_of_hekireki/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1143/kill

# ヒットしていないなら演出の雷を出しておく
    execute if entity @s[tag=!1143.Hit] run function asset:object/1143.arrow_of_hekireki/thunder/

# 雷のダメージが設定されてればObject召喚
    execute if data storage asset:context this.ThunderDamage run function asset:object/1143.arrow_of_hekireki/kill/object_summon

# 消滅
    kill @s
