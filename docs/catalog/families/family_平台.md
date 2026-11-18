# 类族：平台

顶层 **1**，含内部类合计 **6**。

| 类 | 内部? | KB | 方法 | 说明 | 关键方法 |
|---|---|---:|---:|---|---|
| `Steam_Game` |  | 40.1 | 8 | Steam 相关（移动端可能残留） | `checkAchievement`, `checkFormableAchievement`, `checkGovermentAchievement`, `uploadAlliance`, `uploadScore`, `uploadScore_OnSave` …(+2) |
| `Steam_Game$1` | yes | 1.4 | 3 | 内部类 → 外层 `Steam_Game`（Steam 相关（移动端可能残留））｜本类 `Steam_Game$1` | `onEncryptedAppTicket`, `onMicroTxnAuthorization`, `onValidateAuthTicket` |
| `Steam_Game$2` | yes | 29.5 | 8 | 内部类 → 外层 `Steam_Game`（Steam 相关（移动端可能残留））｜本类 `Steam_Game$2` | `onGlobalStatsReceived`, `onLeaderboardFindResult`, `onLeaderboardScoreUploaded`, `onLeaderboardScoresDownloaded`, `onUserAchievementStored`, `onUserStatsReceived` …(+2) |
| `Steam_Game$3` | yes | 2.4 | 9 | 内部类 → 外层 `Steam_Game`（Steam 相关（移动端可能残留））｜本类 `Steam_Game$3` | `onDownloadUGCResult`, `onFileReadAsyncComplete`, `onFileShareResult`, `onFileWriteAsyncComplete`, `onPublishFileResult`, `onPublishedFileDeleted` …(+3) |
| `Steam_Game$4` | yes | 3.2 | 14 | 内部类 → 外层 `Steam_Game`（Steam 相关（移动端可能残留））｜本类 `Steam_Game$4` | `onCreateItem`, `onDeleteItem`, `onDownloadItemResult`, `onGetUserItemVote`, `onRequestUGCDetails`, `onSetUserItemVote` …(+8) |
| `Steam_Game$5` | yes | 2.0 | 8 | 内部类 → 外层 `Steam_Game`（Steam 相关（移动端可能残留））｜本类 `Steam_Game$5` | `onAvatarImageLoaded`, `onFriendRichPresenceUpdate`, `onGameLobbyJoinRequested`, `onGameOverlayActivated`, `onGameRichPresenceJoinRequested`, `onGameServerChangeRequested` …(+2) |
