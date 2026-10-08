#> asset:effect/0402.celestial_star/register
#
# Effectのデータを指定
#
# @within function asset:effect/0402.celestial_star/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 402
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '[{"text":"セ","color":"#7cc4ff"},{"text":"レ","color":"#94cfff"},{"text":"ス","color":"#acd9ff"},{"text":"テ","color":"#c4e4ff"},{"text":"ィ","color":"#dcefff"},{"text":"ア","color":"#ebf0ed"},{"text":"ル","color":"#f0e8c8"},{"text":"ス","color":"#f5dfa3"},{"text":"タ","color":"#fad77f"},{"text":"ー","color":"#ffcf5a"}]'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"「セレスティアルスター」を設置している"}','{"text":"4秒毎に威力及び回復力が20%ずつ増加する"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 410
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value
# 最大効果時間 (int) (default = 2147483647)
    data modify storage asset:effect MaxDuration set value 410
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 6
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value

# フィールド
# Pos: 星の座標 {X: double, Y: double, Z: double}
#   付与時にFieldOverrideで指定する
# PowerUpTick: 次の強化までのtick数
# Spread: 中央の球を描くdustの散らばり
# Bugs: 球の周りを漂う光の向き (Yaw, Pitch) と距離 (Radius, e2)
# Detonation: 起爆の指示 {Multiplier: int, Queue?: compound[], Wave?: int}
#   神器が再付与時にFieldOverrideで指定する
#   Multiplier は基礎値の20%単位の倍率
#   Queue は近い帯から順の対象 (UserID または MobUUID と、1mごとの距離の帯 Ring)
#   Wave は起爆の波が届いた距離 (m)
    data modify storage asset:effect Field set value {PowerUpTick:80,Spread:0.15d,Bugs:[{Yaw:0,Pitch:0,Radius:90},{Yaw:120,Pitch:20,Radius:110},{Yaw:240,Pitch:-20,Radius:80}]}
