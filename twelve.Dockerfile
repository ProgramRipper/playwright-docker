FROM jacoblincool/playwright:chromium-light-server-1.55.1

RUN apk add --no-cache curl font-noto-all font-noto-emoji && \
    mkdir -p /usr/share/fonts/truetype/lxgw && \
    curl -L -o /usr/share/fonts/truetype/lxgw/LXGWWenKaiGB-Medium.ttf https://github.com/lxgw/LxgwWenkaiGB/releases/download/v1.520/LXGWWenKaiGB-Medium.ttf && \
    curl -L -o /usr/share/fonts/truetype/lxgw/LXGWZhenKaiGB-Regular.ttf https://github.com/lxgw/LxgwZhenKai/releases/download/v0.815/LXGWZhenKaiGB-Regular.ttf && \
    fc-cache -fv
