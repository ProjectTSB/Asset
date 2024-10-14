#> asset:object/2037.defeated_pumpkin/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2037/detect_hit_entity

# 何もしない
# このファイルが存在しないとプレイヤーにヒットしたときに消滅する

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
