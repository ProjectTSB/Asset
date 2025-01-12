#> asset:mob/0059.jack_o_lantern/remove/
#
# Mobのremove時の処理
#
# @within function asset:mob/alias/59/remove

# スーパーメソッド呼び出し
    function asset:mob/super.remove

# スポーンマーカーをkill
    kill @e[type=marker,tag=1N.SpawnMarker]

# TextDisplayをkill
    kill @e[type=text_display,tag=1N.TextDisplay]

# "確実に"偽物を消し去る
    execute as @e[type=husk,scores={MobID=224},distance=..128] run function api:mob/remove
