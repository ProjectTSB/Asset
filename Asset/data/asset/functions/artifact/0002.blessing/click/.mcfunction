#> asset:artifact/0002.blessing/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/2/click/

# 固定加算量  : HP  +2, MP  +4
# 50島攻略時  : HP+100, MP+200
# 追加選択    : HP  +1, MP  +2, Atk +1%, Def +1%
# 50島極振り時: HP +50, MP+100, Atk+50%, Def+50%

# 固定加算
    scoreboard players add $BonusHealth Global 2
    execute as @a run function api:modifier/max_health/update_bonus
    scoreboard players add $BonusMP Global 4
    execute as @a run function api:modifier/max_mp/update_bonus
# 選択トリガー
    scoreboard players enable @s 02.Trigger
# チャット
    function asset:artifact/0002.blessing/click/show_trigger_chat
# リスナー
    schedule function asset:artifact/0002.blessing/click/listener 1t
