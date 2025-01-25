#> asset:artifact/0985.ark_of_the_sanctuary/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/985/click/


# スコアを戻す
    scoreboard players set @s RD.Time 1

# 待機時間内でもう一度発動した場合に新しい行動を取るように、ターンを上げる
    scoreboard players add @s RD.Turn 1

# デバッグ、Trun固定
    #scoreboard players set @s RD.Turn 1

# 待機時間を設定する
    scoreboard players set @s RD.WaitingTime 25

# スケジュールで実行させる
    schedule function asset:artifact/0985.ark_of_the_sanctuary/click/schedule_loop 1t replace