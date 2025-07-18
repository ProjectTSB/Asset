#> asset:artifact/0002.blessing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0002.blessing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# 固定加算量  : HP  +2, MP  +5
# 60島攻略時  : HP+120, MP+300
# 追加選択    : HP  +2, MP  +4, Atk +1%, Def +1%
# 選択上限時  : HP +60, MP+120, Atk+30%, Def+30%

# 固定加算
    scoreboard players add $BonusHealth Global 2
    execute as @a run function api:modifier/max_health/update_bonus
    scoreboard players add $BonusMP Global 5
    execute as @a run function api:modifier/max_mp/update_bonus
# チャット
    function asset:artifact/0002.blessing/trigger/show_trigger_chat
