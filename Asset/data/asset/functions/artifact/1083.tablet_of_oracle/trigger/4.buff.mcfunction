#> asset:artifact/1083.tablet_of_oracle/trigger/4.buff
#
# ランダムなバフを付与
#
# @within function asset:artifact/1083.tablet_of_oracle/trigger/3.main

# 4種のうちランダムなバフ2つを付与する

# セッション開ける
    function lib:array/session/open

# ID候補リスト
    data modify storage lib: Array set value [248,249,250,251]

# シャッフルする
    function lib:array/shuffle

# 配列を移しておく
    data modify storage asset:temp U3.Array set from storage lib: Array

# セッションを閉じる
    function lib:array/session/close

# 配列の前二つのIDのEffectを付与する
    execute store result storage api: Argument.ID int 1 run data get storage asset:temp U3.Array[0]
    function api:entity/mob/effect/give
    execute store result storage api: Argument.ID int 1 run data get storage asset:temp U3.Array[1]
    function api:entity/mob/effect/give

# リセット
    data remove storage asset:temp U3.Array
