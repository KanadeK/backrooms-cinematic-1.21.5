# Backrooms Cinematic v0.5.2-rc1 — Migration Candidate

## English

This pre-release contains the complete integrated world package, data pack, and embedded HD resource pack. It is published for community review before the stable release.

**Known migration status:** `level.dat` reports DataVersion 1976 and Version.Name `1.14.4`. The data and resource packs carry Java 1.21.5-targeted metadata, but this repository has not completed an official vanilla Java 1.21.5 dedicated-server force-upgrade pass or a clean second boot. Do not report this RC as verified Java 1.21.5 compatibility.

Client graphics rendering, full story completion, multiplayer completion, performance, and frame rate have not been tested by this release process. The embedded resource pack is structurally validated only; client rendering remains unverified.

The repository includes two project-owner-supplied client-view captures and five `.mca`-based world renders. The world renders are not AI-generated, but they are not F2 client captures; see `docs/SCREENSHOTS.md`.

Install by extracting the ZIP and copying its single world directory into Minecraft `saves`. Verify `SHA256SUMS.txt` before use. Do not use GitHub's automatic Source code ZIP as a game save.

## 中文

本预发布版包含完整世界、数据包和内嵌高清资源包，供稳定版前的社区审阅。

**迁移状态：** `level.dat` 的 DataVersion 为 1976、Version.Name 为 `1.14.4`。数据包和资源包包含面向 Java 1.21.5 的元数据，但本仓库尚未完成 Mojang 原版 Java 1.21.5 专用服务端的全量强制升级和第二次干净启动。不得将此 RC 描述为已验证兼容 Java 1.21.5。

本发布流程未测试客户端图形渲染、主线完整通关、多人通关、性能或帧率。内嵌资源包仅通过结构校验，客户端渲染仍待测试。

仓库包含两张项目所有者提供的客户端视角图和五张基于 `.mca` 的世界渲染图。世界渲染图不是 AI 生成，但也不是 F2 客户端截图；详见 `docs/SCREENSHOTS.md`。

解压 ZIP 后，把唯一世界目录复制到 Minecraft `saves`，使用前核对 `SHA256SUMS.txt`。不要将 GitHub 自动生成的 Source code ZIP 当作游戏存档。
