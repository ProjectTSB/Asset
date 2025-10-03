#> asset:object/1061.azure_jelly/tick/turn/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

# 敵がいなければ
#  - 使用者の近くならテキトーに移動する
#  - 使用者が遠ければそっちへ移動する

# 敵がいれば
#  - プレイヤーから一定距離以内なら最寄りの敵の方へ移動する
#  - プレイヤーから離れすぎたらプレイヤーの方へ戻る

# 敵がいないなら
    # Ownerが近くならテキトーな方向へ
        execute unless function asset:object/1061.azure_jelly/predicate/near_enemy if function asset:object/1061.azure_jelly/predicate/near_player run function asset:object/1061.azure_jelly/tick/turn/near_player_no_enemy

    # Ownerが遠いならOwnerの方へ
        #execute unless function asset:object/1061.azure_jelly/predicate/near_enemy unless function asset:object/1061.azure_jelly/predicate/near_player run function asset:object/1061.azure_jelly/tick/rotate/far_player_no_enemy
        execute unless function asset:object/1061.azure_jelly/predicate/near_enemy unless function asset:object/1061.azure_jelly/predicate/near_player facing entity @p[tag=1061.Owner] feet run tp @s ~ ~ ~ ~ ~


# 敵がいるなら
    # Ownerが近くなら敵の方へ
        execute if function asset:object/1061.azure_jelly/predicate/near_enemy if function asset:object/1061.azure_jelly/predicate/near_player run function asset:object/1061.azure_jelly/tick/turn/far_player_no_enemy

    # Ownerが遠いならOwnerの方へ
        execute if function asset:object/1061.azure_jelly/predicate/near_enemy unless function asset:object/1061.azure_jelly/predicate/near_player facing entity @p[tag=1061.Owner] feet run tp @s ~ ~ ~ ~ ~
