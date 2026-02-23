#> asset:effect/0347.snowball_canon/register
#
# Effectのデータを指定
#
# @within function asset:effect/0347.snowball_canon/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 347
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"雪玉発射！！！","color":"#baf5ff"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value []
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 2
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 1
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    # data modify storage asset:effect RequireClearLv set value
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value false
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    data modify storage asset:effect StackVisible set value false

# フィールド
    data modify storage asset:effect Field.Bullet set value 1
    data modify storage asset:effect Field.MaxBullet set value 60
    data modify storage asset:effect Field.IsFullCharge set value false
    data modify storage asset:effect Field.IsShooting set value false
    data modify storage asset:effect Field.Spread set value {Neutral:0.3,FullCharge:0.1}
    data modify storage asset:effect Field.Motion set value {Neutral:0.7,FullCharge:1.5}
    data modify storage asset:effect Field.Damage set value 1
