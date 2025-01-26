#> asset:effect/0297.life_is_transitory/register
#
# Effectのデータを指定
#
# @within function asset:effect/0297.life_is_transitory/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 32
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 297
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"夢幻泡影","color":"aqua","bold":true}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"体力が大幅に減少するが、"}','{"text":"周囲から姿が見えなくなり、敵に見つかりにくくなる"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 2147483647
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 4
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value false
