#> asset:effect/0375.charge_of_thunderflash/end/iai/check/hit_box
#
#
#
# @within function asset:effect/0375.charge_of_thunderflash/end/iai/recursive

# プレイヤーのヒットボックスの頂点及びその中央がno_collisionなら成功
# 足元のみ下付きハーフブロックを考慮する
    execute positioned ~0.3 ~ ~0.3 unless function asset:effect/0375.charge_of_thunderflash/end/iai/check/allowed_blocks run return 0
    execute positioned ~-0.3 ~ ~0.3 unless function asset:effect/0375.charge_of_thunderflash/end/iai/check/allowed_blocks run return 0
    execute positioned ~0.3 ~ ~-0.3 unless function asset:effect/0375.charge_of_thunderflash/end/iai/check/allowed_blocks run return 0
    execute positioned ~-0.3 ~ ~-0.3 unless function asset:effect/0375.charge_of_thunderflash/end/iai/check/allowed_blocks run return 0

    execute unless block ~0.3 ~1 ~0.3 #lib:no_collision/ run return 0
    execute unless block ~-0.3 ~1 ~0.3 #lib:no_collision/ run return 0
    execute unless block ~0.3 ~1 ~-0.3 #lib:no_collision/ run return 0
    execute unless block ~-0.3 ~1 ~-0.3 #lib:no_collision/ run return 0

    execute unless block ~0.3 ~1.8 ~0.3 #lib:no_collision/ run return 0
    execute unless block ~-0.3 ~1.8 ~0.3 #lib:no_collision/ run return 0
    execute unless block ~0.3 ~1.8 ~-0.3 #lib:no_collision/ run return 0
    execute unless block ~-0.3 ~1.8 ~-0.3 #lib:no_collision/ run return 0

# 成功
    return 1
