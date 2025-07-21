#> asset:effect/0337.night_vision_goggle/register
#
# Effectのデータを指定
#
# @within function asset:effect/0337.night_vision_goggle/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 191
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 337
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"暗視 - パルスアーマー","color":"light_purple"}'
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 2147483647
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 1
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value false
# 死亡時のエフェクトの処理 (default = "remove")
    data modify storage asset:effect ProcessOnDied set value "keep"
