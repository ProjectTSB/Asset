#> asset:mob/0439.dps_checker_boy/tick/dps_check/end
#
#
#
# @within function asset:mob/0439.dps_checker_boy/tick/dps_check/

data modify storage asset:context this.Color set value "gold"

# 上に乗ってるヤツとして実行、テキストを変更
    execute on passengers run function asset:mob/0439.dps_checker_boy/tick/dps_check/set_text.m with storage asset:context this

# データ設定
    data modify storage asset:context this.IsDPSCheckEnded set value true
    data modify storage asset:context this.Cooldown set value 100

# 計測終了演出
    playsound minecraft:block.note_block.bit hostile @a ~ ~ ~ 1.5 2
