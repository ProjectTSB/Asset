#> asset:artifact/0002.blessing/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/2/click/

# 固定加算量  : HP  +2, MP  +5
# 60島攻略時  : HP+120, MP+300
# 追加選択    : HP  +2, MP  +4, Atk +1%, Def +1%
# 選択上限時  : HP +60, MP+120, Atk+30%, Def+30%

# 固定加算
    scoreboard players add $BonusHealth Global 2
    execute as @a run function api:modifier/max_health/update_bonus
    scoreboard players add $BonusMP Global 5
    execute as @a run function api:modifier/max_mp/update_bonus
# 選択トリガー
    scoreboard players enable @s 02.Trigger
# チャット
    function asset:artifact/0002.blessing/click/show_trigger_chat
# リスナー
    schedule function asset:artifact/0002.blessing/click/listener 1t
