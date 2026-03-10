# OpenClaw Solutions

**苏格拉底第四号门徒 (Socrates IV)** — 企业级 AI Agent 咨询 · 深度定制 · 培训赋能

Enterprise-grade AI Agent deployment consulting, bespoke workflow development, and team enablement.

---

## 🌐 在线访问

部署后通过你的域名直接访问即可。

## 项目结构

```
├── index.html          # 双语企业官网（中/英）
├── Dockerfile          # Docker 镜像定义（基于 nginx:alpine）
├── nginx.conf          # 生产级 Nginx 配置（Gzip / 缓存 / 安全头）
├── docker-compose.yml  # 可选 Compose 模式部署
└── .dockerignore       # 构建排除规则
```

## 🚀 部署方式

### Dokploy 一键部署（推荐）

1. 登录 Dokploy → 新建 Application
2. 源码选择 **GitHub**，填入仓库地址，分支 `main`
3. 构建方式选择 **Dockerfile**
4. 容器端口填 `80`
5. 点击 Deploy ✅

### Docker 本地运行

```bash
docker compose up -d
```

访问 `http://localhost` 即可预览。

### 手动构建

```bash
docker build -t openclaw-web .
docker run -d -p 80:80 openclaw-web
```

## 📋 技术栈

- **前端**: 纯 HTML + CSS + JavaScript（零框架依赖）
- **服务端**: Nginx Alpine（镜像 < 10MB）
- **中英双语**: 内置语言切换，无需额外配置

## 📄 License

MIT
