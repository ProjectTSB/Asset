#> asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/append/do.m
# @input args
#   ID: string
#   Name: string(TextComponent)
#   Stack: int
#   RequireClearLv: int
#   DurationMinutes: string
#   DurationSeconds: string
# @within function asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/append/

$data modify storage asset:temp 01.EffectMessages append value '{"text":"","extra":[{"text":"\\uB0FF","font":"effect/inline/common"},{"text":"\\uC010","font":"space"},{"text":"\\u$(ID)","font":"effect/inline/icon","color":"#FFFFFF"},{"text":"\\uC012","font":"space"},{"text":"\\uB0C$(RequireClearLv)","font":"effect/inline/common"},{"text":"\\u0001","font":"space"},{"text":"\\uB00$(Stack)","font":"effect/inline/common"},{"text":"\\u0002","font":"space"},{"text":"","extra":[$(Name)]},{"text":"\\u0002","font":"space"},{"text":"($(DurationMinutes):$(DurationSeconds))"}]}'
