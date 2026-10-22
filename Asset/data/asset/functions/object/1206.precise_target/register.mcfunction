#> asset:object/1206.precise_target/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1206/register

# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false

# ID (int)
    data modify storage asset:object ID set value 1206
# フィールド
    # 所有者のUserID
        data modify storage asset:object Field.UserID set value -1
    # 所有者の目から見た的の方角 (度) 召喚時にentityのRotationへ反映する
        data modify storage asset:object Field.Yaw set value 0.0f
        data modify storage asset:object Field.Pitch set value 0.0f
    # 見た目 (1ならリロード状態のチェスト、0なら通常の的ブロック)
        data modify storage asset:object Field.Chest set value 0
