# Vue Landing Page

![workflow](https://github.com/YogaPan/vue-landing-page/actions/workflows/main.yml/badge.svg)

原為區塊鏈相關產品的 landing page，現已移除網域、敏感個資作為作品使用。

## 使用技術

1. [Vue.js](https://vuejs.org/)：網頁框架，方便使用重複的 component 進行開發。
2. [Nginx](https://nginx.org/)：作為靜態 Web Server，並進行 cache、compression 壓縮等處理。
3. [Docker](https://www.docker.com/)：協助建置、測試並且打包成一個獨立網頁應用，只需建置一次 Docker image，即可在任意機器、平台、服務上執行，避免環境設定、套件安裝等繁雜工作。
4. [Google Cloud Platform](https://cloud.google.com/gcp/)：協助我們整合 CI/CD 自動進行建置、測試、部署至雲端，讓我們有更多餘力專注在開發上。

參考我的部落格文章：[How to Deploy Static Site to GCP Cloud Run](https://galtz.netlify.app/gcp-static-site/)

## Development

### npm scripts

1. `yarn`: 安裝 dependencies。
2. `yarn dev`: 在 http://localhost:3000 使用 hot reload 開發。
3. `yarn format`：使用 [Prettier](https://prettier.io/) 確保程式碼風格符合規範。
4. `yarn lint`：使用 [ESLint](https://eslint.org/) 確保程式碼風格符合規範。
5. `yarn build`: production build。
6. `yarn serve`：透過 http://localhost:7070 檢驗 production build 結果。

### Docker scripts

1. `./scripts/build-image.sh`: 在 local 環境建置 Docker image。
2. `./scripts/run-image.sh`: 在 local 環境運行 Docker container。
3. `./scripts/cloud-build.sh`: 嘗試使用 GCP Cloud Build 建置 Docker image。

### Workflow

1. 執行 `yarn` 安裝 dependencies。
2. 開啟 branch 進行開發，branch 名稱使用 `build|ci|docs|feat|fix|perf|refactor|test` 開頭並加上斜線 `/`，例如：`feat/add-ico-ui-block`。
3. 修改程式並 commit，commit message 遵守 [Angular Convention](https://github.com/angular/angular/blob/master/CONTRIBUTING.md)，經修改的程式碼會透過 [lint-staged](https://github.com/okonet/lint-staged) + [husky](https://github.com/typicode/husky) 進行 lint & test。
4. Push 至 Github，手動發起 pull request。
5. 自動觸發 Github Actions 的 merge-build job，嘗試建置 Docker image 成功後，手動 merge 進 master branch。
6. 自動觸發 [Cloud Build](https://cloud.google.com/build) 建置 Docker image 後部署至 [Cloud Run](https://cloud.google.com/run)。

### Depfu

[Depfu](https://depfu.com/) 會在 npm packages 有新版本時發出 PR 且列出 changelog，方便我們進行例行性套件升級。
