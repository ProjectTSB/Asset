#> asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name_apply.m
#
# ボス名変更
#
# @within asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m

# bossbar変更
    $bossbar set asset:angel$(MobUUID) name {"text":"$(Name)"}
