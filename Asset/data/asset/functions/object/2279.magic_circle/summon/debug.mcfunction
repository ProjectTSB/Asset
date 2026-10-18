#> asset:object/2279.magic_circle/summon/debug
#
# 魔法陣を召喚する動作チェック用の処理
#
# @user
# @private

# 表示する文字とフォントを指定する
    data modify storage api: Argument.FieldOverride.Char set value "0"
    data modify storage api: Argument.FieldOverride.Font set value "object/2279"
    data modify storage api: Argument.FieldOverride.Color set value "#00FFBB"

# 出現と消失の変化先を指定する
    data modify storage api: Argument.FieldOverride.AppearScale set value [5f,5f,0f]
    data modify storage api: Argument.FieldOverride.DisappearScale set value [0f,0f,0f]

# 初回待機3tickと出現12tick、通常回転2回32tick、消失12tickに合わせる
    data modify storage api: Argument.FieldOverride.Tick set value 59
    data modify storage api: Argument.FieldOverride.AppearDuration set value 12
    data modify storage api: Argument.FieldOverride.SpinDuration set value 16
    data modify storage api: Argument.FieldOverride.DisappearDuration set value 12

# 回転方向を50%の確率で反転する
    data modify storage api: Argument.FieldOverride.LeftRotate set value false
    execute if predicate lib:random_pass_per/50 run data modify storage api: Argument.FieldOverride.LeftRotate set value true

# 召喚
    data modify storage api: Argument.ID set value 2279
    function api:object/summon
