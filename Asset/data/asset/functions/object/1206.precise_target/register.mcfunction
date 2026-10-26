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
    # 召喚した神器のID 所有者がスニーク中にこの神器をメインハンドに持っている間だけ存在する
        data modify storage asset:object Field.ArtifactID set value -1
    # 状態 (1ならリロード状態のチェスト、0なら通常のstick)
        data modify storage asset:object Field.Chest set value 0
    # 画面中央の的か (1なら所有者の目から視線方向へ常に置き、通常の的の1.5倍の大きさにする)
        data modify storage asset:object Field.Center set value 0
    # チェストの固定方角 (度) ワールド固定 召喚時にentityのRotationへ反映する
        data modify storage asset:object Field.Yaw set value 0.0f
        data modify storage asset:object Field.Pitch set value 0.0f
    # 通常の的の局所オフセット 狙う敵の方向に垂直な面での距離1あたりのずれ initで抽選する (Xが負なら左側、正なら右側)
        data modify storage asset:object Field.X set value 0.0d
        data modify storage asset:object Field.Y set value 0.0d
