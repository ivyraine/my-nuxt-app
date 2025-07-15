# 使用官方 Node.js 20 LTS 或更高版本作為基礎映像
FROM node:20-alpine AS build-stage 

# 設定工作目錄
WORKDIR /app

# 複製 package.json 和 package-lock.json
COPY package*.json ./

# 安裝依賴
RUN npm install

# 複製所有專案檔案到工作目錄
COPY . .

# 執行 Nuxt 應用程式的建置
RUN npm run build

# --- 運行階段 ---
FROM node:20-alpine AS run-stage

WORKDIR /app

# 複製 build-stage 的 node_modules
COPY --from=build-stage /app/node_modules ./node_modules

# 複製 .output/server 到最終映像 (Nuxt 3 默認的建置輸出目錄)
COPY --from=build-stage /app/.output ./.output

# 暴露 Nuxt 應用程式的默認埠
EXPOSE 3000

# 設定環境變數 (修正舊版語法)
ENV HOST=0.0.0.0
ENV PORT=3000

# 啟動 Nuxt 應用程式
CMD ["node", ".output/server/index.mjs"]