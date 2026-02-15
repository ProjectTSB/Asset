#> asset:mob/0456.gargo_ex_machina/tick/event/activate/show_dummy_bossbar
#
# 起動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/activate/

# ひつじBossbar表示
    bossbar add asset:co_scape_sheep {"text":"逆襲のひつじしゃん"}
    bossbar set asset:co_scape_sheep players @a[distance=..80]
    bossbar set asset:co_scape_sheep color pink
    bossbar set asset:co_scape_sheep style notched_10
    bossbar set asset:co_scape_sheep max 1
    execute store result bossbar asset:co_scape_sheep value run scoreboard players get @s CO.EventTimer
