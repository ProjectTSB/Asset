---
title: Object、API、生成と検証
description: Object、API storage、生成・更新スクリプト、CIと自動マージ、実機検証を扱うときに読む
---

# Object、API、生成と検証

Object の変更前に [型・インスタンス・継承モデル](object-model.md)、Effect の変更前に [Effect の定義・イベント・寿命](effect.md) を読む。Object は `Asset/data/asset/functions/object/<4桁ID>.<name>/` の型定義から生成され、summon／init／tick や任意メソッドを自前実装・継承・明示 super で組み合わせる。基底の abstract_projectile を使う例と、子の値を先に設定する初期化契約も同文書に示す。

この領域の個別判断の一部は `docs/knowledge/notes/` にある。移動・幾何の判断は `notes/motion/`・`notes/geometry/` で、DevSpaceの `scripts/knowledge/index.py --area motion` のように領域で絞って読む。

ディレクトリはゼロ埋め4桁だが、`storage asset:object ID` と API へ渡す ID は整数である。生成時の FieldOverride はクラスの既定 Field に merge される。個体の Field は OhMyDat の `ObjectField` に保持され、処理中だけ `storage asset:context this.*` に展開される。実装から `this` を変えた結果は本体の呼び出し境界で書き戻される。Effect は別の保存形式・イベント呼び出し方式を持つため、Object の経路をそのまま適用しない。

`object/1051.time_laser/tick/damage.mcfunction` はcontextのDamage等を `api: Argument` に転送し、owner検索用のTemporaryを末尾でresetする実例である。`object/1069.icicle_manager/tick/summon_icicle/summon.m.mcfunction` はmacro引数 `OffsetX`, `OffsetZ` を `$execute` へ展開し、`FieldOverride.*` は `asset:context this` から直接設定する。storage macroの別例では `object/1086.lightning_exploit/hit/vfx/random.mcfunction` が `with storage asset:temp Args` で `.m` 関数を呼ぶ。呼出形式を混同しない。

[Smoke Bomb の座標受け渡し](../../Asset/data/asset/functions/object/2003.smoke_bomb/tick/tp.mcfunction) は、各Pos成分を `data get ... 10000` で取得し、`store ... double 0.0001` でmacro用storageへ戻す。座標を小数第4位相当の精度で受け渡す実例であり、macroの指数表記を避けるための処理ではない。整数のコマンド結果を経由する際の倍率の扱いは、DevSpaceの `AGENTS.md` の共通mcfunction規約を参照する。

一時領域の寿命を確認する実例は上記の `1051.time_laser`。個体の保存状態を持つ `asset:context this` の契約は [実行モデル](object-model.md#インスタンス状態と呼び出し境界) を参照する。selectorのレビュー根拠は [sources.md](sources.md) のPR #2078。

API契約の正本は依存先TheSkyBlessingのナレッジとコードにある。Asset側の利用例では `function api:global_vars/get_difficulty` の後に `api: Return.Difficulty` を読み、Effect取得後には `api: Return.Effect` の有無を判定する。APIごとの結果形式と一時領域の寿命を照合する。

Wiki の API 一覧は探索用の索引として使えるが、例示された path・Return 名を契約として転記しない。例えば Absorption 取得の現行本体は UUID 必須で `Return.Absorption` を返し、Wiki の引数なし／`Return.Amount` という例とは異なる。Asset 単独で判断できない場合は [固定 commit の本体 `get`](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/api/functions/entity/player/absorption/get.mcfunction) と core を確認する。

生成・更新スクリプトは相対cwdへの依存が強い。作用先は次の通り。

|script|入力|書込先・注意|
|---|---|---|
|`extract.sh`|`scripts/in_source` のDB/CSVとtrader register|`scripts/input/*.csv`、中間DBを更新し、packing script経由で`output`を作って最後に`update_register.sh`を呼ぶ。入力CSVとDBも加工・削除する。|
|`update_register.sh`|`scripts/output/strpack-*.txt`|`Asset/data/asset/functions/nexus_loader/register.mcfunction` の固定行を `sed -i` で更新する。|
|`extract_trader.sh`|`Asset/.../trader/**/register.mcfunction`|`scripts/input/traders.csv`。|
|`update-artifact-register.scala.sc`|`scripts/input/artifact-colors.tsv` と各artifact registerのRarityRegistry行|該当registerへ色別registry行を追記する。既存行を除去しないので、無条件再実行は重複し得る。入力の`isSet`と事前差分を確認する。|
|`update-artifact-spreadsheet.scala.sc`|artifactの`give/2.give.mcfunction`|`scripts/output/artifact-spreadsheet.csv`を上書きする。|
|`mob_upgrade_v3.scala.sc`|repo rootから見た`Asset/data/.../mob`のv1/v2実装|mob本体のregister/init/triggerと`mob/alias/<ID>`を直接作成・更新する。既定は全mob対象なので、対象設定と差分を先に確認する。|

CI は `.github/workflows/datapack-linter.yml` の `ChenCMD/datapack-linter@v2`。push、pull_request、workflow_dispatch で走り、`animated_java:**` は lint 対象外。linter 成功は構文・参照の一部確認であり、実機の tick、damage、演出、説明文の正しさまでは保証しない。

共通のmcfunction規約はDevSpaceの `AGENTS.md` にある。このrepoでのdeclareの実例は [1163の複数タグ宣言](../../Asset/data/asset/functions/artifact/1163.rail_shooter/trigger/_index.d.mcfunction) と [1430のtag/score宣言](../../Asset/data/asset/functions/artifact/1430.shield_of_fate/trigger/_index.d.mcfunction)。公開範囲の確認では、各IMP Docと対応する宣言を一組で参照する。

スクリプト実行後は対象repoでdiffを確認し、意図しないmobやregisterが変わっていないか検索する。再生成が安全とスクリプトから確認できる場合だけ二度実行して差分安定性を見る。手動trigger、registerコメント、`# @within`、tag JSONを保持し、`mob_upgrade_v3.scala.sc` 後はv1/v2判定とalias参照を再検索する。

通常処理のコメント・インデントの実例は [神器1430の条件処理](../../Asset/data/asset/functions/artifact/1430.shield_of_fate/trigger/2.check_condition.mcfunction) と [Effect 233の再付与処理](../../Asset/data/asset/functions/effect/0233.flame_armor/re-given/.mcfunction)。入手用定義の各項目の説明は [神器57](../../Asset/data/asset/functions/artifact/0057.elemental_sword/give/2.give.mcfunction) を参照する。

### コメントに保存された生成ツールの情報

[Sapphielの粒子コード](../../Asset/data/asset/functions/mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick.mcfunction) にある `# [ImportKey]: ...` はShapes Generator用の情報である（ユーザー確認済み）。Minecraftが実行しないコメントでも外部ツールとの接続を持つため、不要な文字列として削除しない。この印だけからファイル全体を生成物と決めつけたり、未確認の再生成手順を作ったりしない。

## docs/tests の承認と自動マージ

Asset の master 向け PR は、write 権限を持つ人による1件の承認と `lint` の成功を必要とする。承認者を特定のメンバーへ限定しない。Ruleset は必須承認数を1、Code owner の承認必須を無効にする。差分を変更するコミットの追加時には、人と Bot のどちらの承認も取り消す。Ruleset は Git 管理外の設定なので、ファイルのマージだけでは承認要件は変わらない。

[自動マージworkflow](../../.github/workflows/auto-merge-docs-tests.yml) はmaster向けの非Draft PRをAPIで調べ、変更ファイルがすべて `docs/`・`tests/` 配下ならsquash方式のauto-mergeを有効にする。承認と必須チェックがそろえばマージし、未完了ならGitHubが条件成立を待つ。docs/tests だけの PR は GitHub Actions bot が確認したコミットを承認するため、人の承認は不要になる。全ページのファイル一覧と変更件数を照合し、rename前のパスも判定するため、本体ファイルをdocsへ移動したPRは自動化の対象外になる。rootのREADMEや `.github/` も対象外。

`docs/`・`tests/` 配下でも、以後のAI全体の行動を変える保護対象を含むPRは対象外になる。現在の保護対象は `AGENTS.md`、`docs/knowledge/README.md`、`.github/workflows/auto-merge-docs-tests.yml`、`.github/tests/auto-merge-docs-tests.test.cjs` で、rename前のパスも同じ判定を受ける。`docs/knowledge/notes/` 配下の個別ノートは自動マージの対象のままで、追加・訂正・削除に人の承認を待たない。保護対象の一覧と理由はDevSpaceの `docs/knowledge-notes.md`「人がマージする範囲」にあり、workflow内の一覧と一緒に更新する。

保護対象を含むPRには自動承認も付かないため、人のレビューとマージが必要になる。

追加コミットが入るたびに差分全体を再判定し、引き続き docs/tests だけなら Bot が改めて承認する。本体コードが加わった場合は、人による新しい承認が必要になる。

PRの更新・Draft化・マージ先変更で対象外になった場合は、GitHub Actions botが有効にしたauto-mergeを解除する。このworkflowが付けた承認も取り消す。人が有効にしたauto-mergeは保持する。差分確認中にhead・base等が変化した場合は処理を見送り、次のイベントで再判定する。既存PRや手動再試行にはworkflow_dispatchの `pull_request` 番号入力を使う。

auto-mergeを手動解除しただけでは継続的な停止にならず、次のPR更新で条件を満たせば再び有効になる。作業中のPRを自動マージさせたくない場合はDraftにしておき、Ready for reviewへ戻すと再判定される。導入前から開いているPRは、更新イベントまたはworkflow_dispatchで判定を開始する。

自動承認の前に、Ruleset で古い承認の取り消しが有効かを確認する。無効なら自動承認を止める。GitHub Actions bot 自身が作成した PR は自己承認できないため、人の承認を待つ。

workflowは `pull_request_target` と標準の `GITHUB_TOKEN` を使い、PRのコードをcheckout・実行しない。Actionsのイベントポリシーでは `pull_request_target` を許可する必要がある。GITHUB_TOKENによるマージでは後続のpush workflowが通常起動しないため、自動対象を本体・生成スクリプトへ広げる場合は、マージ後の処理も再設計する。

差分判定とCLI呼出しの回帰確認は `node --test .github/tests/auto-merge-docs-tests.test.cjs`。APIとCLIを置き換えたローカル検証であり、Rulesetや実際のGitHubマージ動作の検証とは区別する。

## NBTの整数カウンタを、1未満の倍率で減らす

NBT内の残距離・残時間をscoreへ往復させずに減らす場合は、DevSpaceの `docs/mcfunction-idioms.md`「整数化を挟む演算」の値域・丸めを確認する。[abstract_projectile](../../Asset/data/asset/functions/object/0001.abstract_projectile/tick/rec.m.mcfunction) の `RemainingRange` は正の整数を減らし0を維持する実例で、係数は `0.9999999999`。係数を1へ丸めない。

Asset固有の確認点は、終了を示す負数と初期化時の二段の丸めである。[Killer Bee Formation](../../Asset/data/asset/functions/mob/0429.killer_bee_formation/tick/.mcfunction) は完了値-1を減算対象から外す。[Thunderの予告時間](../../Asset/data/asset/functions/object/2057.thunder/init/.mcfunction) はgetとstoreの両方へ係数を掛けるため、例えば20は18になる。無条件の-1へ置換せず、呼出先が受け取る時間まで確認する。

## item entityの拾得・合流・描画を制御する

[Orange の summon](../../Asset/data/asset/functions/object/2079.orange/summon/.mcfunction) の `PickupDelay:-1s` は拾得を防ぎ、[init](../../Asset/data/asset/functions/object/2079.orange/init/.mcfunction) で `Item.tag.OrangeID` に乱数を入れるのはitem同士の合流を防ぐためである（ユーザー確認済み）。同じアイテム・同じNBTならVanilla側でまとまってCountが増えるので、コードから読み出さないtagにも個体を別々に保つ役割がある。乱数は一意性を保証する識別子とは扱わない。

[Airlift の食料召喚](../../Asset/data/asset/functions/object/1076.airlift/tick/give_load.mcfunction) の `Fire:2s` はentityの描画更新を起こすための指定である（ユーザー確認済み）。燃焼ダメージのためだけのNBTと見なして削除しない。Motion変更後の `damage @s 0` という別手段と、対象・見た目に伴う制約は、依存先TheSkyBlessingの `docs/knowledge/runtime-components.md`「墓と LostItems」の説明を参照する。

## AECは効果付与と位置保持を区別する

位置・向き・経過scoreを保持するだけの補助entityと、Vanilla効果を付与するentityは、同じAECでも寿命の契約が異なる。[Angel Rayの起動処理](../../Asset/data/asset/functions/artifact/0262.angel_ray_lv.1/trigger/3.main.mcfunction) の `Age:-2147483648,Duration:-1,WaitTime:-2147483648` はeffectsを持たない長寿命の位置保持用AECである（用途はユーザー確認済み）。終了は [ray](../../Asset/data/asset/functions/artifact/0262.angel_ray_lv.1/trigger/ray.mcfunction) のscore判定とkillが担う。利用する場合は明示的な回収を設計し、三値の組み合わせを `Duration:-1` 単独の永久化という規則へ縮めない。

同じ起動処理の `Duration:6,Age:4,effects:[{id:"slowness",...,duration:13}]` は、召喚直後に近いタイミングで付与し、効果とAECを数tickで消すための別の指定である（ユーザー確認済みの意図）。秒未満の効果付与とAEC本体の寿命の区別は、依存先TheSkyBlessingの `docs/knowledge/runtime-components.md` のAECの説明を参照する。長寿命の位置保持用AECと一括して設定を整理しない。

補助entityを空間の位置で選び分ける方法もある。[Golden Gear](../../Asset/data/asset/functions/object/2062.golden_gear/tick/.mcfunction) は高さ4・5のAECへitem_displayを乗せ、4.5・5.5の位置で同じtagの表示を選ぶ。transformationのtranslationで見える位置を戻しても、selectorが調べるentityの位置とは別である。位置が固定できる区間向けの簡便な識別であり、安定したIDの代用として一般化しない。自由な移動・Passenger構成の変更・近接した複数組を許すなら、[個体キーによる関連付け](mob.md#個体の関連付けとイベント入力)も検討する。

## execute幾何学で表示の回転を作る

[General Long Laser の tick](../../Asset/data/asset/functions/object/2168.general_long_laser/tick/.mcfunction) は、実行位置・向きを連続して変え、縦角度[-90,90]を横角度[0,180]へ変換してから `LeftRotation.angle` に取り出す。原点から局所座標 `^1 ^ ^` へ移したmarkerのPosは回転軸になる。ユーザーが確認した採用理由は、既知の幾何イディオムでscoreboardへの値の出し入れ・演算・後始末を避け、記述量と処理コストを抑えること。`positioned`・`rotated`・`facing` の列を無駄な移動と見なさず、最後に得られる位置・角度から読む。[作者によるレーザーの実装解説](https://qiita.com/komaramune/items/68823dd4dcfdcdda0a0e) にも同じ目的の角度変換があるが、現行コードとはコマンド列が異なるため、記事の列へ機械的に置換しない。

表示の向きを新しく実装する場合は、本体の公開API `lib:rotate_display/` も確認する。必要なscaleの条件と、entityのRotationを固定してtransformationへ向きを持たせる契約は、依存先TheSkyBlessingの `docs/knowledge/runtime-components.md` にある。

[Magic Bullet Squareのspin](../../Asset/data/asset/functions/object/1045.magic_bullet_square/tick/spin.mcfunction) は、90度刻みの四元数を順に設定して補間し、同じ方向へ回転を続ける。大きな角度を一度に指定した際の補間方向の反転や無回転を避ける意図である（ユーザー確認済み）。終点が同じ向きになることだけを根拠に、一周分を一回の代入へまとめない。

### 滑らかな旋回で真後ろから抜け出す

向きを反転させる `facing ^ ^ ^-1` はpitchも反転するため、yawだけを180度変える `rotated ~180 ~` と同じではない。[Lexiel の射撃](../../Asset/data/asset/functions/mob/0123.lexiel_v3/tick/common/fireball.mcfunction) はmarkerから本体を向いてから反転し、本体の向きを変えずに本体からmarkerへの方向を取得する。

[Pumpkin Missile の追尾](../../Asset/data/asset/functions/object/2034.pumpkin_missile/tick/aim_to_target.m.mcfunction) は、標的を向いて120後退し、元の向きへ戻して800後退し、そこから本人の目を向くことで二つの方向を合成する。開始位置と本人の目の位置が一致する場合、得られる方向は `120 × 標的方向 + 800 × 現在方向` となる。開始位置が足元なら目との高さの差も加わる。120と800は実体の移動距離ではなく追従の重みで、比率を変えると旋回の仕方が変わる。固定の角速度を指定しているわけではなく、単純な `facing <標的>` へ置き換えると徐々に追従する動きを失う。

[Storm Shadow の旋回](../../Asset/data/asset/functions/object/2082.storm_shadow/tick/turn.mcfunction) は別方式で、コメント上は `arctan(0.2)`、約11度/tickの旋回を狙った幾何の列である。目標方向へ近づいたときと飛行時間が長すぎたときには直接向きを合わせる分岐もある。一定の旋回速度を狙う実装例として、この切替条件まで含めて参照する。

[Ecual の旋回](../../Asset/data/asset/functions/mob/0392.ecual_first/ai/general/2.rotate.mcfunction) は、水平の前方向fと、後方2の点から目標へ向かう単位方向dを合成した `2f + d` の向きへ回す。目標がその点より真後ろにあると `d = -f` となり、向きがfのまま変わらない。続く行は前方1の点から目標へ1進んだ位置が本人の近くに戻る場合にyawを1度ずらすため、この停滞から抜け出せる。これはコードの幾何から導ける役割であり、微小な回転を見た目だけの調整として削除しない。別の旋回方式へ同じ補正を無条件に付けるものではない。

## ローカル座標を使う粒子の方向指定

向きに沿って粒子を飛ばす既存の `count=0` の指定では、方向ベクトルを大きくして速度を小さくする慣習がある。

[Heiloang の粒子リング](../../Asset/data/asset/functions/mob/0410.heiloang/tick/event/power_charge/particle_ring.mcfunction) は、`particle end_rod ^0 ^ ^-50 ^0 ^0 ^5000000000 0.0000000008 0 force` のように、巨大なローカル座標と極小の速度を組み合わせる。ユーザーが確認している目的は粒子の方向を保つことで、数値を小さくすると方向が失われる。積が同じになるという理由だけで値を縮小したり、異常な定数として修正したりしない。内部でこの差が生じる理由や、別の粒子種・座標範囲で使える数値の下限は確認していないため、この一例から一般式や最小値を作らない。

## 既存dustの範囲外RGBは新規には使わない

[Sapphiel の演出](../../Asset/data/asset/functions/mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/6.1.particle_kick.mcfunction) の `dust 1000000000 1000000000 100000000 1` や、[Ecual の転移演出](../../Asset/data/asset/functions/mob/0392.ecual_first/ai/general/3.teleport_effect/loop.mcfunction) の `dust -0.8 -100000000 -100000000 1` は、発色の強い原色に近い色を出すための指定である（ユーザー確認済み）。通常の0〜1へ正規化する変更を見た目が同じと扱わない。内部の発色理由は未確認。ユーザー方針として、後続バージョンでは使えなくなる手法のため新規実装には採用しない。既存演出の読解・保守のために残す知識であり、廃止された具体的なバージョンはここでは特定していない。

## displayの種類を選ぶ

block_display・item_display・text_displayの選択基準は、DevSpaceの `docs/mcfunction-idioms.md`「display三種を表示内容から選ぶ」にある。Assetの演出では、ブロック状態、CustomModelDataを持つモデル、フォントの字形という表示元を確認して選ぶ。display自身が論理Objectの場合も、別entityのPassengerとして表示を担う場合もあるため、表示の種類とField・移動・破棄を担当するentityを分けて確認する。

## displayの初回位置合わせを非表示で行う

[Ecual の予告線](../../Asset/data/asset/functions/mob/0392.ecual_first/ai/projectile/announce_line/2.tick.mcfunction) は、横断面のscaleを0にして生成し、負の残り時間を最初の処理で正に反転する。可視化判定は反転より前にあるため、初回の位置合わせ中は非表示を保ち、次の処理でscaleと `teleport_duration:1` を設定する。負数は単なる異常な時間値ではなく、初回処理と表示開始を分ける状態も表している。

表示を準備する段階と可視化する段階を分けたいときの実例として使える。負の値は「初回処理前」、正の値は「表示待ち以降」という状態を兼ねるため、数値の符号だけを正規化しない。初回の可視状態・位置確定・補間開始の順序を一組で扱う。意図が生成直後の補間を隠すことかは未確定なので、見た目の改善効果を保証する手法としてではなく、段階的な初期化の例として参照する。

## 再実行できる実機検証

共通runnerの使い方と記録方法はDevSpaceの `docs/runtime-verification.md` にある。このrepoのシナリオ保存先は `tests/scenarios/`。例は [双律の印章](../../tests/scenarios/dual-rhythm.json) で、神器固有の初期化・効果の発火・観測・解除を記述する。
