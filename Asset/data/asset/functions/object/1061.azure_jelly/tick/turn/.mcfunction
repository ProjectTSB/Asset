#> asset:object/1061.azure_jelly/tick/turn/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

# 敵がいなければ
#  - 使用者の近くならテキトーに移動する
#  - 使用者が遠ければそっちへ移動する

# 敵がいれば
#  - プレイヤーから「離れていないなら」最寄りの敵の方へ移動する
#  - プレイヤーから「離れているなら」プレイヤーの方へ戻る

# プレイヤー

# 敵がいないなら
    # Ownerが近くならテキトーな方向へ
        execute unless function asset:object/1061.azure_jelly/predicate/near_enemy if function asset:object/1061.azure_jelly/predicate/near_player run function asset:object/1061.azure_jelly/tick/turn/near_player_no_enemy

    # Ownerが遠いならOwnerの方へ
        execute unless function asset:object/1061.azure_jelly/predicate/near_enemy unless function asset:object/1061.azure_jelly/predicate/near_player facing entity @p[tag=1061.Owner] eyes run tp @s ~ ~ ~ ~ ~


# 敵がいるなら
    # Ownerが遠くなければ敵の方へ
        execute if function asset:object/1061.azure_jelly/predicate/near_enemy unless function asset:object/1061.azure_jelly/predicate/far_player run function asset:object/1061.azure_jelly/tick/turn/chase_enemy
    # Ownerが遠いならOwnerの方へ
        execute if function asset:object/1061.azure_jelly/predicate/near_enemy if function asset:object/1061.azure_jelly/predicate/far_player facing entity @p[tag=1061.Owner] eyes run tp @s ~ ~ ~ ~ ~
