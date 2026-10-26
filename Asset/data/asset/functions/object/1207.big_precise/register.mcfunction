#> asset:object/1207.big_precise/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1207/register

# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 1207
# フィールド
    # 所有者のUserID
        data modify storage asset:object Field.UserID set value -1
    # 召喚した神器のID 所有者がこの神器をメインハンドに持っている間だけ存在する
    # 1681はスニーク中なら狙う敵の方 (スニーク中でなければ所有者の向き) 、1682は真下を向く
        data modify storage asset:object Field.ArtifactID set value -1
