#> asset:mob/0439.dps_checker_boy/tick/cooldown/reset
#
#
#
# @within function asset:mob/0439.dps_checker_boy/tick/cooldown/

# 上のtext_displayとして実行し、テキストを変える
    execute on passengers run data modify entity @s text set value '[{"text":"DPS: "},{"text":"Waiting...","underlined":true}]'

# テキストのデータ
    data modify storage asset:context this.Color set value "aqua"
    data modify storage asset:context this.Sum set value 0
    data modify storage asset:context this.Tick set value 0
    data modify storage asset:context this.Cooldown set value 0
    data modify storage asset:context this.DPSCheckDuration set value 300
    data modify storage asset:context this.IsAttacked set value false
