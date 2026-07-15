#> asset:artifact/1307.yumeori/trigger/curved_shot
#
#
#
# @within function asset:artifact/1307.yumeori/trigger/3.main

# バフを消費
    data modify storage api: Argument.ID set value 380
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# 曲射の仕様メモ
# 上向きに発射された矢が射程限界で消えると、曲射が発動し、周囲の敵に矢を降らす
# つまり、途中でブロックに当たると不発する
# ただし、上向きの矢はentityに対してはヒット判定がない

# 曲射のデータ設定
    # 1発辺りのダメージ
        data modify storage api: Argument.FieldOverride.Damage set value 100
    # 本数
        data modify storage api: Argument.FieldOverride.Count set value 6
    # ディレイ
        data modify storage api: Argument.FieldOverride.Delay set value 20

    # 射程
        data modify storage api: Argument.FieldOverride.Range set value 50
    # 弾速
        data modify storage api: Argument.FieldOverride.Speed set value 8

    # 座標も入力しておく
        function api:data_get/pos
        data modify storage api: Argument.FieldOverride.Pos.X set from storage api: Pos[0]
        data modify storage api: Argument.FieldOverride.Pos.Y set from storage api: Pos[1]
        data modify storage api: Argument.FieldOverride.Pos.Z set from storage api: Pos[2]

# 召喚
    data modify storage api: Argument.ID set value 1177
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
