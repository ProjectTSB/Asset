#> asset:effect/0402.celestial_star/re-given/
#
# 起爆の指示を受けて、星から10m以内の敵と味方を、距離の帯ごとに起爆の対象として記録する
#
# @within function asset:effect/0402.celestial_star/_/re-given

# 起爆の指示がなければ何もしない
    execute unless data storage asset:context this.Detonation run return fail

# 星の座標を引き継ぐ
    data modify storage asset:context this.Pos set from storage asset:context PreviousField.Pos

# 星から10m以内の敵と味方を、近い帯から順に対象の一覧へ積む
    data modify storage asset:context this.Detonation.Queue set value []
    data modify storage asset:context this.Detonation.Wave set value 0
    function asset:effect/0402.celestial_star/re-given/collect.m with storage asset:context this.Pos

# 起爆の波が範囲の端に届くまで、Effectを残す
    data modify storage asset:context Duration set value 40
