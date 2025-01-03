#> asset:mob/0106.mini_shulker/tick/teleport/do/
# @within function asset:mob/0106.mini_shulker/tick/teleport/

# テレポート先を選定する
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp 2Y.Target
    function lib:array/shuffle
    data modify storage asset:temp 2Y.Teleport set from storage lib: Array[0]
    function lib:array/session/close
# テレポートする
    function asset:mob/0106.mini_shulker/tick/teleport/do/exec.m with storage asset:temp 2Y.Teleport

# リセット
    data remove storage asset:temp 2Y.Teleport
