#> asset:mob/0439.dps_checker_boy/tick/dps_check/end
#
#
#
# @within function asset:mob/0439.dps_checker_boy/tick/dps_check/

data modify storage asset:context this.Color set value "gold"

# 計測結果を報告
    execute store result storage asset:context this.Sum int 0.01 run data get storage asset:context this.Sum
    tellraw @a[distance=..32] [{"text":"DPS: "},{"storage":"asset:context","nbt":"this.DPS","underlined":true},{"text":"\n総ダメージ: "},{"storage":"asset:context","nbt":"this.Sum","underlined":true}]

# 上に乗ってるヤツとして実行、テキストを変更
    execute on passengers run function asset:mob/0439.dps_checker_boy/tick/dps_check/set_text.m with storage asset:context this

# データ設定
    data modify storage asset:context this.IsDPSCheckEnded set value true
    data modify storage asset:context this.Cooldown set value 100

# 計測終了演出
    playsound minecraft:block.note_block.bit hostile @a ~ ~ ~ 1.5 2
