# 双律の印章の検証記録

現行のEffect IDは399（軽減）・400（与ダメージ増加）・401（クールダウン）。2026-09の過去記録の395・396・397にそれぞれ対応する。

2026-09-19〜21の記録は当時の未コミット実装に対する既存記録をsourcesから移したもの。本体基準は `5d6799ed1` で、別作業のEffect処理変更後の動作を保証する記録ではない。入力・期待値・実測値・失敗時ログは各節のDevSpaceローカル記録を参照する。旧試行には撤回済みのInRespawnEvent条件が含まれ、現行仕様の根拠にはしない。

## 2026-10-08 接触判定の距離指定を削除

接触判定を1×2×1のboxに絞り、接触対象の選択・移譲・タグ削除から重複する距離指定を削除した。399・400の説明文も既存のEffectと表現を揃えた。

Assetは `9be8e19bbcab6bb59d02ad182b07986dfe2b1340` に上記の変更を加えた作業コピー、本体は `44b7e6e54500eab3dc89de2c2ad70cd471f48ee3` を使用した。共通runnerで [シナリオ](../../tests/scenarios/dual-rhythm.json) を実行した `run-zjrk5vw8` は109項目すべて成功した。同時接触で1人だけへの移譲、接触タグの削除、軽減の解除・復帰、攻撃強化の非重複と時間更新を確認した。サーバーexit 0、全dimension保存、検証中のコード不変も確認した。

入力・期待値・実測値はDevSpaceの `.runtime/verification-runs/run-zjrk5vw8/` に保存している。コマンドで初期化・移動したプレイヤーとAPI値による検証であり、描画・音・実際のHP変化は対象外。

## 2026-10-08 再付与を演出に限定

399・400の補正設定をgivenへまとめ、re-givenは演出だけにした。通常の神器経路では全装備者が同じ補正量を渡すため、適用済みの補正量を変更する再付与は仕様に含めない。シナリオは初回givenと同じ補正量での時間更新を検査する。調整値の受け渡しは、新規付与時に別の値を渡して確認する。

本体は確認時点のmaster `44b7e6e54500eab3dc89de2c2ad70cd471f48ee3`、Assetは `8abd461bcda949d4cd70993f771945b5bd306c43` に上記の変更を加えた作業コピー、AnimatedJavaは `e48a116501b931a6688d5bd77e8f60c82de27ffa` を使用した。DevSpaceの検証専用設定で各worktreeを参照し、通常worldを変更せず共通runnerで実行した。

`run-ibgfwv1f` は109項目すべて成功した。接触移譲、軽減の解除・復帰、攻撃強化の非重複、同じ補正量での再付与による時間更新、終了時の補正解除を確認した。サーバーexit 0、全dimension保存、検証中のコード不変も確認した。描画・音・実際のHP変化は対象外。

初回given前の二重付与は本体の問題として別途検証した。同じmasterに既存の `tests/effect-runtime/pack` だけを追加した隔離コピーで、同じID・Duration・FieldOverrideのgiveを2回実行した。最初はNextEventがgiven、2回目はre-givenとなり、その後のイベント記録もre-givenの1件だけだった。比較として1回だけ付与した場合はgivenが1回実行された。

初回 `run-_fjuayr9` は起動直後のRCON応答待ちでタイムアウトし、検査は0項目だった。同じ条件で再試行した `run-9nakl4gb` は、初回givenの配送を期待する4項目目で失敗し、上記のre-givenのみの実測を記録した。両試行とも正常終了・全dimension保存・コード不変を確認した。本体実装は変更しておらず、[TheSkyBlessing #2308](https://github.com/ProjectTSB/TheSkyBlessing/issues/2308) に再現手順と実測を報告した。本体の修正までは、この条件で399・400の初期補正が設定されない。

過去の検証にある「初回given前の二重付与でも補正が設定される」「再付与で補正量が変わる」という結果は、変更前の実装に対する記録であり、現行の保証には含めない。各試行の入力・期待値・実測・対象コードはDevSpaceの `.runtime/verification-runs/<run名>/` に保存している。

## 2026-10-06 調整値を神器の付与時引数へ移動

補正量と各効果の時間を神器側へまとめ、399のFieldから接触相手の400と自身の401へ引き継ぐ形に変更した。[シナリオ](../../tests/scenarios/dual-rhythm.json) は既存85項目に、付与時に異なる補正量・時間を指定する検査を追加した。

初回 `run-olchbvmz` は、攻撃倍率の期待文字列 `1.4d` に対して実測が `1.4000000000000001d` となり失敗した。既存85項目は成功している。実装は変更せず、追加した攻撃倍率の検査を100万倍した整数で比較する形へ直し、期待値の前後1を許容した。再試行時には軽減の失効検査の名前も、観測対象に合わせて修正した。

初回を `--retry-of` で指定した `run-rgjwkg_g` は109項目すべて成功した。軽減割合0.25、攻撃強化割合0.4の受け渡し、攻撃強化500tick・待ち時間1600tickが以前の定義値で切り詰められないことを確認した。初回given前の二重付与でも補正が設定され、適用済みの攻撃強化へ異なる補正量と長短両方の時間を再付与すると、その値へ更新された。指定時間での失効と補正解除も成功した。

検証対象はAssetの `feat/artifact-1412-seal-of-dual-rhythm`（基準 `5d865731fe8c0338a0ec96646f8feb81372454bf` とレビュー対応の差分）と、本体 `9eab911af967cf976994d6521dfca96810d890dd` の独立したworktree。AnimatedJavaは `e48a116501b931a6688d5bd77e8f60c82de27ffa` のdistを使用した。DevSpaceの検証専用設定で参照先を指定し、同じAsset worktreeのシナリオを `sh scripts/verify.sh` に渡した。通常の作業ツリーや稼働中の別サーバーは変更していない。

両試行ともサーバーexit 0、全dimension保存、検証中のコード不変を確認した。期待値・実測・参照repo・差分はDevSpaceの `.runtime/verification-runs/<run名>/` に保存している。実際の死亡・リスポーン操作、HPの変化、描画や音は確認していない。

## 2026-10-03 自己削除APIへの切り替え

399の接触移譲から `remove/from_id` を呼び、removeイベントで軽減補正を解除する形に変更した。手動の補正解除と `Duration=0` を設定するfinish関数は削除した。

`sh scripts/verify.sh Asset/tests/scenarios/dual-rhythm.json` を実行し、`run-c6rfn_id` は85項目すべて成功した。接触時の399と軽減補正の解除、他のUUIDの補正の保持、相手への攻撃強化、待ち時間の継続と終了後の復帰を確認した。装備解除とDeathタグを使った死亡条件の確認も成功した。サーバーはexit 0で終了し、全dimensionの保存と検証中のコード不変を確認した。

参照先はDevSpace直下のAssetとTheSkyBlessing。Assetは `dc71eb011015807a1a14628915a621413a2fb3d5` に未コミット変更を加えた状態、本体は `35646d71b2f82f512939df290cf9f759be5ef400` の `fix/1673-effect-removal-during-events` を使用した。本体の未コミット差分はナレッジ文書のみで、AnimatedJavaは `e48a116501b931a6688d5bd77e8f60c82de27ffa` のdistを使用した。

入力・期待値・実測・コードの記録はDevSpaceの `.runtime/verification-runs/run-c6rfn_id/` に保存した。明示的に初期化したプレイヤーによる自動検証であり、実際の死亡・リスポーン操作、HPの変化、描画や音は確認していない。

## 2026-10-03: 付与・移譲時のSEとパーティクル

399と400のgiven/re-given、および399の移譲時に演出を追加した。既存の `tests/scenarios/dual-rhythm.json` で、付与・移譲・非重複・時間更新・クールダウン終了・解除・Deathタグfixtureによる死亡時処理を回帰確認した。

初回 `run-cgv7oywb` は、起動直後のRCON `tick freeze` の応答待ちで `TimeoutError: timed out` となり、シナリオは0stepだった。サーバーはexit 0で終了し、全dimension保存と検証中のコード不変を確認した。コードを変更せず、初回のresult.jsonを `--retry-of` に指定した `run-lf44rm50` は85stepすべて成功し、runnerもpassedとなった。正常終了・全dimension保存・コード不変を確認し、サーバーログに関数読み込みエラーはなかった。

参照先はDevSpace直下のAsset（基準HEAD `318f122aacd2dfb0f033a4f233d84d93cbbbb1aa` と未コミット変更）、TheSkyBlessing（`fc46b38fc33f895f88225470dd8c440887a413e6`）、Asset-AnimatedJava（`e48a116501b931a6688d5bd77e8f60c82de27ffa`）。生ログ・入力・期待値・実測はDevSpaceの `.runtime/verification-runs/<run名>/` に保存した。プロトコルクライアントによる検証のため、粒子の描画・音の聞こえ方・演出パケットの受信は検証していない。

## 2026-10-03: 399の死亡時処理をremoveへ変更

399を `ProcessOnDied:"remove"` にし、独自のDeath判定を削除した。本体の死亡時削除と399のremoveイベントによる補正解除を、既存シナリオのDeathタグfixtureで確認した。接触時の自己終了は維持している。実際の死亡・リスポーン操作の試験ではない。

`sh scripts/verify.sh Asset/tests/scenarios/dual-rhythm.json` の初回 `run-fjhg57pj` は、SealTargetの接続時にサーバー側の `EncoderException: ConcurrentModificationException` とクライアント側のECONNRESETが記録され、ログイン待ちがタイムアウトした。実行stepは0。コードを変えず、直前のresult.jsonを `--retry-of` で指定して再試行した。

`run-4_tlfx0u` と、その再試行 `run-uytkgn2a` はいずれも85stepすべての機能検査に成功した。399と軽減補正の死亡時削除、死亡だけでは401を付与しないこと、通常の移譲・非重複・時間更新・クールダウン・再付与を確認した。ただし両試行とも検証中のナレッジ文書更新により `codeUnchangedDuringRun:false` となり、runner全体のstatusはfailedである。機能検査の成功をrunner全体の合格とは扱わない。終了後のファイルハッシュ照合でコードの変更は検出されず、1回目は両repoのナレッジ、2回目はAssetの `docs/knowledge/object-model.md` の変更を確認した。

3試行ともサーバーexit 0・全dimension保存を確認した。初回のみrepo不変チェックも成功。各試行の入力・期待値・実測・対象コード・終了状況はDevSpaceの `.runtime/verification-runs/<run名>/` に保存している。

## 2026-10-03: Effect ID 399〜401での動作検証

`sh scripts/verify.sh Asset/tests/scenarios/dual-rhythm.json` を実行し、`run-yk_tw7d7` は85stepすべて成功した。参照先はDevSpace直下のAsset、TheSkyBlessing、Asset-AnimatedJava（dist）。基準HEADはAsset `85332107cbc7a93c33198f4a98f997c61332c6f2`、TheSkyBlessing `31d20b889b981662853a2e37401b1ff347b1067f` で、それぞれの未コミット変更を含む。サーバー正常終了（exit 0）、全dimension保存、検証中repo不変を確認した。入力・期待値・実測値と対象コードのsnapshotはDevSpaceの `.runtime/verification-runs/run-yk_tw7d7/` に保存している。

軽減倍率0.9、接触時の軽減解除と1人への攻撃倍率1.2、攻撃強化の非重複・Duration 300への更新・失効、装備解除中も401の残り時間が減ること、再装備で待ち時間が戻らないこと、401終了後の軽減復帰、装備解除による399削除を確認した。別UUIDの補正を残した解除、付与・削除待ちでの移譲抑止、神器を持たない状態での399単体の接触処理、公開Deathタグを明示設定した際の終了も成功した。

明示初期化した3人のFloraプレイヤーとコマンドによる装備・移動、tick stepを用いたAPI値の検証である。描画、自然な初回ログイン、実ダメージのHP差、シャード抽選、再接続、実際の死亡・リスポーン操作は対象外。同じ神器同士の持ち替えは独立した試験項目に含めていない。

## 2026-09-21: 神器を395の付与に絞り、接触・移譲を395へ移設

DevSpaceで `sh scripts/verify.sh Asset/tests/scenarios/dual-rhythm.json` を実行し、`run-m2meiaem` は85stepすべて成功した。正常停止（exit 0）、全dimension保存、検証中repo不変を確認した。従来の移譲・非重複・15秒への更新・装備解除中の397経過・軽減復帰に加え、神器を持たないプレイヤーへ395を直接付与し、395単体でも防御倍率0.9、接触による自身の終了、防御倍率1.0への復帰、397のDuration 1200、接触相手の攻撃倍率1.2を確認した。公開Deathタグを明示設定した場合は395と自身の補正だけが消え、397は付与されなかった。別UUIDの補正との共存、given待ち・remove待ちで移譲しない検査も成功した。

32関数の参照先と登録JSON、Asset間の内部呼出し・旧接触タグ・非公開タグ参照がないこと、関連文書のリンクと差分を静的確認した。実サーバー試験は明示初期化したプレイヤーとコマンドによる操作・API値の検査であり、実死亡・リスポーン操作、実ダメージのHP差、描画は未検証。生ログ・入力・期待値・実測値はDevSpaceの `.runtime/verification-runs/run-m2meiaem/result.json` と同ディレクトリに保持する。

## 2026-09-21: 個別Asset間の内部関数・リソース共有を除去

[シナリオ](../../tests/scenarios/dual-rhythm.json) を73stepへ拡張した。初回 `run-51vetuq2` はテスト開始前にRCON接続拒否で失敗（実行step 0）。同じコード・シナリオで `sh scripts/verify.sh Asset/tests/scenarios/dual-rhythm.json --retry-of .runtime/verification-runs/run-51vetuq2/result.json` を再実行した `run-29t1_c6r` は73stepすべて成功した。両試行とも正常停止（exit 0）、全dimension保存、検証中repo不変を確認した。失敗と再試行の生ログ・期待値・実測値はDevSpaceの各 `.runtime/verification-runs/run-*/result.json` に保持する。

## 2026-09-21: 1.triggerの定型とプレイヤー状態の除外

[シナリオ](../../tests/scenarios/dual-rhythm.json) に状態条件の検査を追加した。作成時にcommand stepのexpect不足で起動前validationが一度失敗したため補完した。初回実行 `run-xv54vwa9` は「spectatorで395なし」の検査が失敗した。保存されたownerのplayerdataは `playerGameType:0` で、検証座標の `world_manager/area/02.islands/on_entered` が非creativeをsurvivalへ変更する実装と一致した。再試行では装備前にエリア入場を2tick処理し、各状態の維持も期待条件へ追加した。当時のInRespawnEvent fixtureは自動終了を避けるためRespawnEventを10へ設定し、終了時81へ戻した。この5stepは誤った発動制限を検査していたため、後続の訂正で削除した。神器コードはこの失敗前後で変更していない。

`sh scripts/verify.sh Asset/tests/scenarios/dual-rhythm.json --retry-of .runtime/verification-runs/run-xv54vwa9/result.json` による再試行 `run-rbfdsm5x` は当時の56stepすべて成功（InRespawnEventによる制限の仕様上の正当性やタグの公開範囲を検証した結果ではない）。spectatorおよび明示設定したDeath/InRespawnEventタグでは共通offhand checkがCanUsedを付け、1412側の条件では395を付与しないことを確認した。従来の移譲・非重複・時間更新・装備解除・397の期限と軽減復帰も成功。実死亡・リスポーン操作は未検証であり、タグfixtureと混同しない。両試行とも正常停止（exit 0）、全dimension保存、検証中のrepo不変を確認した。生ログ・期待値・実測値はDevSpaceの各 `.runtime/verification-runs/run-*/result.json` に保持する。

## 2026-09-21: 双律の印章のクールダウンをEffect 397へ変更

[シナリオ](../../tests/scenarios/dual-rhythm.json) を397の存在・Durationで検査するよう更新し、DevSpaceで `sh scripts/verify.sh Asset/tests/scenarios/dual-rhythm.json` を実行。`run-w2cqb1n2` は40stepすべて成功し、正常停止（exit 0）、全dimension保存、検証中の参照repo不変を確認した。397のDurationは移譲後1200、装備解除後899、再装備後897、期限直前1、次tickで消滅、その次の神器tickで軽減倍率0.9への復帰を確認した。待機中の接触による再移譲がないこと、既存の攻撃バフの非重複・時間更新・終了、装備解除後の軽減解除も成功した。本体は神器tickの後にEffect tickを実行するため、この復帰順序になる。

試験は明示的に初期化したFloraプレイヤーとコマンドによる装備・移動を用いたAPI値の検証。自然なログイン、実ダメージのHP差、描画、再接続、死亡や解除スキルでの操作は検証していない。死亡時keepと解除レベル3は定義・生成されたEffectデータを確認した範囲である。生ログ・入力・期待値・実測値はDevSpaceのローカル領域 `.runtime/verification-runs/run-w2cqb1n2/result.json` と同ディレクトリに保持する。

## 2026-09-20: 神器検証の確認範囲

DevSpaceの `scripts/verification/clients.cjs`・`run.py` と [1412のシナリオ](../../tests/scenarios/dual-rhythm.json) を静的に照合した。クライアントの入力操作は未実装であり、現試験の装備・接触はサーバーコマンドによる。時間検査は期限前後の網羅ではなく、他の補正が共存する解除も未検査であるため、[Artifact](../knowledge/artifact.md) に確認範囲を追記した。実サーバーでの追加試験や不具合の再現は行っていない。

## 2026-09-19: 運用監査後の参照・検証手順

共通runnerで別々の新規worldに対して2回実行し、各32step成功、正常停止と全dimension保存、検証中の参照repo不変を確認した。装備・接触・解除・待ち時間・Effect再付与のAPI値を検査し、RarityRegistryへの登録も確認した。前提は明示的なfirst_join・Flora信仰の設定であり、自然な初回ログイン、実際のHP差、シャード抽選、描画、再接続は対象外。実行結果と作成中の失敗・修正履歴はDevSpaceの `docs/knowledge-verification.md`、生ログは `.runtime/verification-runs/` に記録した。成功試行は `run-6h9pqfmv`・`run-2yiezn9g`。

## 2026-09-19: 双律の印章とEffectの再付与境界

検証は専用ワールドのVanilla 1.20.4と3つのプロトコルクライアントで実施。29個の新規関数の参照先と登録JSONを静的検査し、実サーバーで関数読み込み、アイテム生成、軽減倍率0.9、同時接触時の1人への増加倍率1.2、自身の軽減解除、攻撃バフの終了、装備し直しても待ち時間が残ること、移譲から1200tickを処理した時点で軽減倍率0.9が戻ること、装備解除で倍率1.0へ戻ること、初回given前の二重付与でも1.2となること、再付与でDurationが300へ更新されることを確認した。見た目・リソースパック・実操作でのプレイ感は未検証。tick凍結・stepを使った試験でプレイヤーの初期化済み状態を確認できず、初期化関数を明示実行した。信仰もBelieve.NoneからBelieve.Floraへ手動設定しており、自然な初回ログインの検証ではない。生ログはDevSpaceのローカル領域 `.runtime/dual-rhythm-verification/` に保持する。
