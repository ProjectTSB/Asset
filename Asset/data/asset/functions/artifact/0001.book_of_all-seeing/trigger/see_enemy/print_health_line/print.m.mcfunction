#> asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/print_health_line/print.m
# @input args
#   Health: int
#   MaxHealth: int
#   HealthPer: int
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/print_health_line/

$tellraw @p[tag=this] {"text":"","extra":[{"storage":"global","nbt":"Icon.FrameWhite","interpret":true},{"text":"♡","font":"artifact/1/info"},{"text":"\u0002","font":"space"},{"text":"$(Health)"},{"text":"\u0002","font":"space"},{"text":"/"},{"text":"\u0002","font":"space"},{"text":"$(MaxHealth) ($(HealthPer)%)"}]}
